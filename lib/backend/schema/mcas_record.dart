import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mcas_record.g.dart';

abstract class McasRecord implements Built<McasRecord, McasRecordBuilder> {
  static Serializer<McasRecord> get serializer => _$mcasRecordSerializer;

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

  static void _initializeBuilder(McasRecordBuilder builder) => builder
    ..name = ''
    ..dob = ''
    ..region = ''
    ..manifesto = ''
    ..image = ''
    ..support = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mcas');

  static Stream<McasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<McasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  McasRecord._();
  factory McasRecord([void Function(McasRecordBuilder) updates]) = _$McasRecord;

  static McasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMcasRecordData({
  String name,
  String dob,
  String region,
  String manifesto,
  String image,
  bool support,
}) =>
    serializers.toFirestore(
        McasRecord.serializer,
        McasRecord((m) => m
          ..name = name
          ..dob = dob
          ..region = region
          ..manifesto = manifesto
          ..image = image
          ..support = support));
