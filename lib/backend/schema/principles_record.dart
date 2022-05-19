import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'principles_record.g.dart';

abstract class PrinciplesRecord
    implements Built<PrinciplesRecord, PrinciplesRecordBuilder> {
  static Serializer<PrinciplesRecord> get serializer =>
      _$principlesRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get image;

  @nullable
  String get role;

  @nullable
  String get bio;

  @nullable
  bool get support;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PrinciplesRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..role = ''
    ..bio = ''
    ..support = false
    ..id = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('principles');

  static Stream<PrinciplesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PrinciplesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PrinciplesRecord._();
  factory PrinciplesRecord([void Function(PrinciplesRecordBuilder) updates]) =
      _$PrinciplesRecord;

  static PrinciplesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPrinciplesRecordData({
  String name,
  String image,
  String role,
  String bio,
  bool support,
  int id,
}) =>
    serializers.toFirestore(
        PrinciplesRecord.serializer,
        PrinciplesRecord((p) => p
          ..name = name
          ..image = image
          ..role = role
          ..bio = bio
          ..support = support
          ..id = id));
