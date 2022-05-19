import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'polling_record.g.dart';

abstract class PollingRecord
    implements Built<PollingRecord, PollingRecordBuilder> {
  static Serializer<PollingRecord> get serializer => _$pollingRecordSerializer;

  @nullable
  String get name;

  @nullable
  double get popularity;

  @nullable
  String get region;

  @nullable
  String get seat;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PollingRecordBuilder builder) => builder
    ..name = ''
    ..popularity = 0.0
    ..region = ''
    ..seat = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('polling');

  static Stream<PollingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PollingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PollingRecord._();
  factory PollingRecord([void Function(PollingRecordBuilder) updates]) =
      _$PollingRecord;

  static PollingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPollingRecordData({
  String name,
  double popularity,
  String region,
  String seat,
}) =>
    serializers.toFirestore(
        PollingRecord.serializer,
        PollingRecord((p) => p
          ..name = name
          ..popularity = popularity
          ..region = region
          ..seat = seat));
