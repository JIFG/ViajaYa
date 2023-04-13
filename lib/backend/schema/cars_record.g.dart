// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarsRecord> _$carsRecordSerializer = new _$CarsRecordSerializer();

class _$CarsRecordSerializer implements StructuredSerializer<CarsRecord> {
  @override
  final Iterable<Type> types = const [CarsRecord, _$CarsRecord];
  @override
  final String wireName = 'CarsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.carid;
    if (value != null) {
      result
        ..add('carid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastUbication;
    if (value != null) {
      result
        ..add('last_ubication')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CarsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'carid':
          result.carid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_ubication':
          result.lastUbication = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CarsRecord extends CarsRecord {
  @override
  final int? carid;
  @override
  final LatLng? lastUbication;
  @override
  final String? state;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarsRecord([void Function(CarsRecordBuilder)? updates]) =>
      (new CarsRecordBuilder()..update(updates))._build();

  _$CarsRecord._({this.carid, this.lastUbication, this.state, this.ffRef})
      : super._();

  @override
  CarsRecord rebuild(void Function(CarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarsRecordBuilder toBuilder() => new CarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarsRecord &&
        carid == other.carid &&
        lastUbication == other.lastUbication &&
        state == other.state &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carid.hashCode);
    _$hash = $jc(_$hash, lastUbication.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarsRecord')
          ..add('carid', carid)
          ..add('lastUbication', lastUbication)
          ..add('state', state)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarsRecordBuilder implements Builder<CarsRecord, CarsRecordBuilder> {
  _$CarsRecord? _$v;

  int? _carid;
  int? get carid => _$this._carid;
  set carid(int? carid) => _$this._carid = carid;

  LatLng? _lastUbication;
  LatLng? get lastUbication => _$this._lastUbication;
  set lastUbication(LatLng? lastUbication) =>
      _$this._lastUbication = lastUbication;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarsRecordBuilder() {
    CarsRecord._initializeBuilder(this);
  }

  CarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carid = $v.carid;
      _lastUbication = $v.lastUbication;
      _state = $v.state;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarsRecord;
  }

  @override
  void update(void Function(CarsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarsRecord build() => _build();

  _$CarsRecord _build() {
    final _$result = _$v ??
        new _$CarsRecord._(
            carid: carid,
            lastUbication: lastUbication,
            state: state,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
