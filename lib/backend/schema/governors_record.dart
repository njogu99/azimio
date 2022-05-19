import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'governors_record.g.dart';

abstract class GovernorsRecord
    implements Built<GovernorsRecord, GovernorsRecordBuilder> {
  static Serializer<GovernorsRecord> get serializer =>
      _$governorsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get region;

  @nullable
  String get manifesto;

  @nullable
  String get dob;

  @nullable
  String get image;

  @nullable
  bool get support;

  @nullable
  double get popularity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GovernorsRecordBuilder builder) => builder
    ..name = ''
    ..region = ''
    ..manifesto = ''
    ..dob = ''
    ..image = ''
    ..support = false
    ..popularity = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('governors');

  static Stream<GovernorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GovernorsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GovernorsRecord._();
  factory GovernorsRecord([void Function(GovernorsRecordBuilder) updates]) =
      _$GovernorsRecord;

  static GovernorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGovernorsRecordData({
  String name,
  String region,
  String manifesto,
  String dob,
  String image,
  bool support,
  double popularity,
}) =>
    serializers.toFirestore(
        GovernorsRecord.serializer,
        GovernorsRecord((g) => g
          ..name = name
          ..region = region
          ..manifesto = manifesto
          ..dob = dob
          ..image = image
          ..support = support
          ..popularity = popularity));
