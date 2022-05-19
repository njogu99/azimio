import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chairman_record.g.dart';

abstract class ChairmanRecord
    implements Built<ChairmanRecord, ChairmanRecordBuilder> {
  static Serializer<ChairmanRecord> get serializer =>
      _$chairmanRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get dob;

  @nullable
  @BuiltValueField(wireName: 'Manifesto')
  String get manifesto;

  @nullable
  String get image;

  @nullable
  bool get support;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChairmanRecordBuilder builder) => builder
    ..name = ''
    ..dob = ''
    ..manifesto = ''
    ..image = ''
    ..support = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chairman');

  static Stream<ChairmanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChairmanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChairmanRecord._();
  factory ChairmanRecord([void Function(ChairmanRecordBuilder) updates]) =
      _$ChairmanRecord;

  static ChairmanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChairmanRecordData({
  String name,
  String dob,
  String manifesto,
  String image,
  bool support,
}) =>
    serializers.toFirestore(
        ChairmanRecord.serializer,
        ChairmanRecord((c) => c
          ..name = name
          ..dob = dob
          ..manifesto = manifesto
          ..image = image
          ..support = support));
