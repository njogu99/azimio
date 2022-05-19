// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mcas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<McasRecord> _$mcasRecordSerializer = new _$McasRecordSerializer();

class _$McasRecordSerializer implements StructuredSerializer<McasRecord> {
  @override
  final Iterable<Type> types = const [McasRecord, _$McasRecord];
  @override
  final String wireName = 'McasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, McasRecord object,
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
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.manifesto;
    if (value != null) {
      result
        ..add('manifesto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.support;
    if (value != null) {
      result
        ..add('support')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  McasRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new McasRecordBuilder();

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
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manifesto':
          result.manifesto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'support':
          result.support = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$McasRecord extends McasRecord {
  @override
  final String name;
  @override
  final String dob;
  @override
  final String region;
  @override
  final String manifesto;
  @override
  final String image;
  @override
  final bool support;
  @override
  final DocumentReference<Object> reference;

  factory _$McasRecord([void Function(McasRecordBuilder) updates]) =>
      (new McasRecordBuilder()..update(updates)).build();

  _$McasRecord._(
      {this.name,
      this.dob,
      this.region,
      this.manifesto,
      this.image,
      this.support,
      this.reference})
      : super._();

  @override
  McasRecord rebuild(void Function(McasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  McasRecordBuilder toBuilder() => new McasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is McasRecord &&
        name == other.name &&
        dob == other.dob &&
        region == other.region &&
        manifesto == other.manifesto &&
        image == other.image &&
        support == other.support &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), dob.hashCode),
                        region.hashCode),
                    manifesto.hashCode),
                image.hashCode),
            support.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('McasRecord')
          ..add('name', name)
          ..add('dob', dob)
          ..add('region', region)
          ..add('manifesto', manifesto)
          ..add('image', image)
          ..add('support', support)
          ..add('reference', reference))
        .toString();
  }
}

class McasRecordBuilder implements Builder<McasRecord, McasRecordBuilder> {
  _$McasRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _manifesto;
  String get manifesto => _$this._manifesto;
  set manifesto(String manifesto) => _$this._manifesto = manifesto;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  bool _support;
  bool get support => _$this._support;
  set support(bool support) => _$this._support = support;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  McasRecordBuilder() {
    McasRecord._initializeBuilder(this);
  }

  McasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dob = $v.dob;
      _region = $v.region;
      _manifesto = $v.manifesto;
      _image = $v.image;
      _support = $v.support;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(McasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$McasRecord;
  }

  @override
  void update(void Function(McasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$McasRecord build() {
    final _$result = _$v ??
        new _$McasRecord._(
            name: name,
            dob: dob,
            region: region,
            manifesto: manifesto,
            image: image,
            support: support,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
