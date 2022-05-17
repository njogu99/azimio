import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'womenrep_record.g.dart';

abstract class WomenrepRecord
    implements Built<WomenrepRecord, WomenrepRecordBuilder> {
  static Serializer<WomenrepRecord> get serializer =>
      _$womenrepRecordSerializer;

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

  static void _initializeBuilder(WomenrepRecordBuilder builder) => builder
    ..name = ''
    ..dob = ''
    ..region = ''
    ..manifesto = ''
    ..image = ''
    ..support = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('womenrep');

  static Stream<WomenrepRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<WomenrepRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  WomenrepRecord._();
  factory WomenrepRecord([void Function(WomenrepRecordBuilder) updates]) =
      _$WomenrepRecord;

  static WomenrepRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createWomenrepRecordData({
  String name,
  String dob,
  String region,
  String manifesto,
  String image,
  bool support,
}) =>
    serializers.toFirestore(
        WomenrepRecord.serializer,
        WomenrepRecord((w) => w
          ..name = name
          ..dob = dob
          ..region = region
          ..manifesto = manifesto
          ..image = image
          ..support = support));
