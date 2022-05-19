// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rallies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RalliesRecord> _$ralliesRecordSerializer =
    new _$RalliesRecordSerializer();

class _$RalliesRecordSerializer implements StructuredSerializer<RalliesRecord> {
  @override
  final Iterable<Type> types = const [RalliesRecord, _$RalliesRecord];
  @override
  final String wireName = 'RalliesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RalliesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.venue;
    if (value != null) {
      result
        ..add('venue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.county;
    if (value != null) {
      result
        ..add('county')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RalliesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RalliesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'venue':
          result.venue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'county':
          result.county = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RalliesRecord extends RalliesRecord {
  @override
  final String venue;
  @override
  final String county;
  @override
  final LatLng location;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> reference;

  factory _$RalliesRecord([void Function(RalliesRecordBuilder) updates]) =>
      (new RalliesRecordBuilder()..update(updates)).build();

  _$RalliesRecord._(
      {this.venue, this.county, this.location, this.date, this.reference})
      : super._();

  @override
  RalliesRecord rebuild(void Function(RalliesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RalliesRecordBuilder toBuilder() => new RalliesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RalliesRecord &&
        venue == other.venue &&
        county == other.county &&
        location == other.location &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, venue.hashCode), county.hashCode),
                location.hashCode),
            date.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RalliesRecord')
          ..add('venue', venue)
          ..add('county', county)
          ..add('location', location)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class RalliesRecordBuilder
    implements Builder<RalliesRecord, RalliesRecordBuilder> {
  _$RalliesRecord _$v;

  String _venue;
  String get venue => _$this._venue;
  set venue(String venue) => _$this._venue = venue;

  String _county;
  String get county => _$this._county;
  set county(String county) => _$this._county = county;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RalliesRecordBuilder() {
    RalliesRecord._initializeBuilder(this);
  }

  RalliesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _venue = $v.venue;
      _county = $v.county;
      _location = $v.location;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RalliesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RalliesRecord;
  }

  @override
  void update(void Function(RalliesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RalliesRecord build() {
    final _$result = _$v ??
        new _$RalliesRecord._(
            venue: venue,
            county: county,
            location: location,
            date: date,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
