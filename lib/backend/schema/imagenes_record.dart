import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'imagenes_record.g.dart';

abstract class ImagenesRecord
    implements Built<ImagenesRecord, ImagenesRecordBuilder> {
  static Serializer<ImagenesRecord> get serializer =>
      _$imagenesRecordSerializer;

  @BuiltValueField(wireName: 'Ine')
  String? get ine;

  @BuiltValueField(wireName: 'TarjetaCirc')
  String? get tarjetaCirc;

  @BuiltValueField(wireName: 'LicManejo')
  String? get licManejo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImagenesRecordBuilder builder) => builder
    ..ine = ''
    ..tarjetaCirc = ''
    ..licManejo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagenes');

  static Stream<ImagenesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagenesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagenesRecord._();
  factory ImagenesRecord([void Function(ImagenesRecordBuilder) updates]) =
      _$ImagenesRecord;

  static ImagenesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagenesRecordData({
  String? ine,
  String? tarjetaCirc,
  String? licManejo,
}) {
  final firestoreData = serializers.toFirestore(
    ImagenesRecord.serializer,
    ImagenesRecord(
      (i) => i
        ..ine = ine
        ..tarjetaCirc = tarjetaCirc
        ..licManejo = licManejo,
    ),
  );

  return firestoreData;
}
