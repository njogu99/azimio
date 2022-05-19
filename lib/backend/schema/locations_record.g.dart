// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationsRecord> _$locationsRecordSerializer =
    new _$LocationsRecordSerializer();

class _$LocationsRecordSerializer
    implements StructuredSerializer<LocationsRecord> {
  @override
  final Iterable<Type> types = const [LocationsRecord, _$LocationsRecord];
  @override
  final String wireName = 'LocationsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.kisumu;
    if (value != null) {
      result
        ..add('kisumu')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  LocationsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'kisumu':
          result.kisumu = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$LocationsRecord extends LocationsRecord {
  @override
  final LatLng kisumu;
  @override
  final DocumentReference<Object> reference;

  factory _$LocationsRecord([void Function(LocationsRecordBuilder) updates]) =>
      (new LocationsRecordBuilder()..update(updates)).build();

  _$LocationsRecord._({this.kisumu, this.reference}) : super._();

  @override
  LocationsRecord rebuild(void Function(LocationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsRecordBuilder toBuilder() =>
      new LocationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationsRecord &&
        kisumu == other.kisumu &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, kisumu.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationsRecord')
          ..add('kisumu', kisumu)
          ..add('reference', reference))
        .toString();
  }
}

class LocationsRecordBuilder
    implements Builder<LocationsRecord, LocationsRecordBuilder> {
  _$LocationsRecord _$v;

  LatLng _kisumu;
  LatLng get kisumu => _$this._kisumu;
  set kisumu(LatLng kisumu) => _$this._kisumu = kisumu;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocationsRecordBuilder() {
    LocationsRecord._initializeBuilder(this);
  }

  LocationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kisumu = $v.kisumu;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationsRecord;
  }

  @override
  void update(void Function(LocationsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationsRecord build() {
    final _$result =
        _$v ?? new _$LocationsRecord._(kisumu: kisumu, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
