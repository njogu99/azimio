// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'county_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountyRecord> _$countyRecordSerializer =
    new _$CountyRecordSerializer();

class _$CountyRecordSerializer implements StructuredSerializer<CountyRecord> {
  @override
  final Iterable<Type> types = const [CountyRecord, _$CountyRecord];
  @override
  final String wireName = 'CountyRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CountyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.county;
    if (value != null) {
      result
        ..add('county')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CountyRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'county':
          result.county = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CountyRecord extends CountyRecord {
  @override
  final String county;
  @override
  final DocumentReference<Object> reference;

  factory _$CountyRecord([void Function(CountyRecordBuilder) updates]) =>
      (new CountyRecordBuilder()..update(updates)).build();

  _$CountyRecord._({this.county, this.reference}) : super._();

  @override
  CountyRecord rebuild(void Function(CountyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountyRecordBuilder toBuilder() => new CountyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountyRecord &&
        county == other.county &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, county.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountyRecord')
          ..add('county', county)
          ..add('reference', reference))
        .toString();
  }
}

class CountyRecordBuilder
    implements Builder<CountyRecord, CountyRecordBuilder> {
  _$CountyRecord _$v;

  String _county;
  String get county => _$this._county;
  set county(String county) => _$this._county = county;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CountyRecordBuilder() {
    CountyRecord._initializeBuilder(this);
  }

  CountyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _county = $v.county;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountyRecord;
  }

  @override
  void update(void Function(CountyRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountyRecord build() {
    final _$result =
        _$v ?? new _$CountyRecord._(county: county, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
