// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polling_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PollingRecord> _$pollingRecordSerializer =
    new _$PollingRecordSerializer();

class _$PollingRecordSerializer implements StructuredSerializer<PollingRecord> {
  @override
  final Iterable<Type> types = const [PollingRecord, _$PollingRecord];
  @override
  final String wireName = 'PollingRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PollingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seat;
    if (value != null) {
      result
        ..add('seat')
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
  PollingRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PollingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seat':
          result.seat = serializers.deserialize(value,
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

class _$PollingRecord extends PollingRecord {
  @override
  final String name;
  @override
  final double popularity;
  @override
  final String region;
  @override
  final String seat;
  @override
  final DocumentReference<Object> reference;

  factory _$PollingRecord([void Function(PollingRecordBuilder) updates]) =>
      (new PollingRecordBuilder()..update(updates)).build();

  _$PollingRecord._(
      {this.name, this.popularity, this.region, this.seat, this.reference})
      : super._();

  @override
  PollingRecord rebuild(void Function(PollingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollingRecordBuilder toBuilder() => new PollingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PollingRecord &&
        name == other.name &&
        popularity == other.popularity &&
        region == other.region &&
        seat == other.seat &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), popularity.hashCode),
                region.hashCode),
            seat.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PollingRecord')
          ..add('name', name)
          ..add('popularity', popularity)
          ..add('region', region)
          ..add('seat', seat)
          ..add('reference', reference))
        .toString();
  }
}

class PollingRecordBuilder
    implements Builder<PollingRecord, PollingRecordBuilder> {
  _$PollingRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _seat;
  String get seat => _$this._seat;
  set seat(String seat) => _$this._seat = seat;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PollingRecordBuilder() {
    PollingRecord._initializeBuilder(this);
  }

  PollingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _popularity = $v.popularity;
      _region = $v.region;
      _seat = $v.seat;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PollingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PollingRecord;
  }

  @override
  void update(void Function(PollingRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PollingRecord build() {
    final _$result = _$v ??
        new _$PollingRecord._(
            name: name,
            popularity: popularity,
            region: region,
            seat: seat,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
