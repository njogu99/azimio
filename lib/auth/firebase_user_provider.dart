import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AzimioMembershipFirebaseUser {
  AzimioMembershipFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AzimioMembershipFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AzimioMembershipFirebaseUser> azimioMembershipFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AzimioMembershipFirebaseUser>(
            (user) => currentUser = AzimioMembershipFirebaseUser(user));
