import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mps_record.g.dart';

abstract class MpsRecord implements Built<MpsRecord, MpsRecordBuilder> {
  static Serializer<MpsRecord> get serializer => _$mpsRecordSerializer;

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

  static void _initializeBuilder(MpsRecordBuilder builder) => builder
    ..name = ''
    ..dob = ''
    ..region = ''
    ..manifesto = ''
    ..image = ''
    ..support = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mps');

  static Stream<MpsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MpsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MpsRecord._();
  factory MpsRecord([void Function(MpsRecordBuilder) updates]) = _$MpsRecord;

  static MpsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMpsRecordData({
  String name,
  String dob,
  String region,
  String manifesto,
  String image,
  bool support,
}) =>
    serializers.toFirestore(
        MpsRecord.serializer,
        MpsRecord((m) => m
          ..name = name
          ..dob = dob
          ..region = region
          ..manifesto = manifesto
          ..image = image
          ..support = support));
