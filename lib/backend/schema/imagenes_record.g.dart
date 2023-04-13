// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagenes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagenesRecord> _$imagenesRecordSerializer =
    new _$ImagenesRecordSerializer();

class _$ImagenesRecordSerializer
    implements StructuredSerializer<ImagenesRecord> {
  @override
  final Iterable<Type> types = const [ImagenesRecord, _$ImagenesRecord];
  @override
  final String wireName = 'ImagenesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImagenesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ine;
    if (value != null) {
      result
        ..add('Ine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tarjetaCirc;
    if (value != null) {
      result
        ..add('TarjetaCirc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.licManejo;
    if (value != null) {
      result
        ..add('LicManejo')
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
  ImagenesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagenesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Ine':
          result.ine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TarjetaCirc':
          result.tarjetaCirc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LicManejo':
          result.licManejo = serializers.deserialize(value,
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

class _$ImagenesRecord extends ImagenesRecord {
  @override
  final String? ine;
  @override
  final String? tarjetaCirc;
  @override
  final String? licManejo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagenesRecord([void Function(ImagenesRecordBuilder)? updates]) =>
      (new ImagenesRecordBuilder()..update(updates))._build();

  _$ImagenesRecord._({this.ine, this.tarjetaCirc, this.licManejo, this.ffRef})
      : super._();

  @override
  ImagenesRecord rebuild(void Function(ImagenesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagenesRecordBuilder toBuilder() =>
      new ImagenesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagenesRecord &&
        ine == other.ine &&
        tarjetaCirc == other.tarjetaCirc &&
        licManejo == other.licManejo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ine.hashCode);
    _$hash = $jc(_$hash, tarjetaCirc.hashCode);
    _$hash = $jc(_$hash, licManejo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagenesRecord')
          ..add('ine', ine)
          ..add('tarjetaCirc', tarjetaCirc)
          ..add('licManejo', licManejo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagenesRecordBuilder
    implements Builder<ImagenesRecord, ImagenesRecordBuilder> {
  _$ImagenesRecord? _$v;

  String? _ine;
  String? get ine => _$this._ine;
  set ine(String? ine) => _$this._ine = ine;

  String? _tarjetaCirc;
  String? get tarjetaCirc => _$this._tarjetaCirc;
  set tarjetaCirc(String? tarjetaCirc) => _$this._tarjetaCirc = tarjetaCirc;

  String? _licManejo;
  String? get licManejo => _$this._licManejo;
  set licManejo(String? licManejo) => _$this._licManejo = licManejo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagenesRecordBuilder() {
    ImagenesRecord._initializeBuilder(this);
  }

  ImagenesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ine = $v.ine;
      _tarjetaCirc = $v.tarjetaCirc;
      _licManejo = $v.licManejo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagenesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagenesRecord;
  }

  @override
  void update(void Function(ImagenesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagenesRecord build() => _build();

  _$ImagenesRecord _build() {
    final _$result = _$v ??
        new _$ImagenesRecord._(
            ine: ine,
            tarjetaCirc: tarjetaCirc,
            licManejo: licManejo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
