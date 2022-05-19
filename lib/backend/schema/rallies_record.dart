import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rallies_record.g.dart';

abstract class RalliesRecord
    implements Built<RalliesRecord, RalliesRecordBuilder> {
  static Serializer<RalliesRecord> get serializer => _$ralliesRecordSerializer;

  @nullable
  String get venue;

  @nullable
  String get county;

  @nullable
  LatLng get location;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RalliesRecordBuilder builder) => builder
    ..venue = ''
    ..county = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rallies');

  static Stream<RalliesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RalliesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RalliesRecord._();
  factory RalliesRecord([void Function(RalliesRecordBuilder) updates]) =
      _$RalliesRecord;

  static RalliesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRalliesRecordData({
  String venue,
  String county,
  LatLng location,
  DateTime date,
}) =>
    serializers.toFirestore(
        RalliesRecord.serializer,
        RalliesRecord((r) => r
          ..venue = venue
          ..county = county
          ..location = location
          ..date = date));
