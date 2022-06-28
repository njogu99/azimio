import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'senator_record.g.dart';

abstract class SenatorRecord
    implements Built<SenatorRecord, SenatorRecordBuilder> {
  static Serializer<SenatorRecord> get serializer => _$senatorRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get dob;

  @nullable
  String get region;

  @nullable
  String get manifesto;

  @nullable
  String get image;

  @nullable
  bool get support;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SenatorRecordBuilder builder) => builder
    ..name = ''
    ..dob = ''
    ..region = ''
    ..manifesto = ''
    ..image = ''
    ..support = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('senator');

  static Stream<SenatorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SenatorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SenatorRecord._();
  factory SenatorRecord([void Function(SenatorRecordBuilder) updates]) =
      _$SenatorRecord;

  static SenatorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSenatorRecordData({
  String name,
  String dob,
  String region,
  String manifesto,
  String image,
  bool support,
}) =>
    serializers.toFirestore(
        SenatorRecord.serializer,
        SenatorRecord((s) => s
          ..name = name
          ..dob = dob
          ..region = region
          ..manifesto = manifesto
          ..image = image
          ..support = support));
