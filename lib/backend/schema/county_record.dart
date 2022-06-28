import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'county_record.g.dart';

abstract class CountyRecord
    implements Built<CountyRecord, CountyRecordBuilder> {
  static Serializer<CountyRecord> get serializer => _$countyRecordSerializer;

  @nullable
  String get county;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CountyRecordBuilder builder) =>
      builder..county = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('county');

  static Stream<CountyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CountyRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CountyRecord._();
  factory CountyRecord([void Function(CountyRecordBuilder) updates]) =
      _$CountyRecord;

  static CountyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCountyRecordData({
  String county,
}) =>
    serializers.toFirestore(
        CountyRecord.serializer, CountyRecord((c) => c..county = county));
