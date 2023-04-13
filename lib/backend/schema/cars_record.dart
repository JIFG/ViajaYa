import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cars_record.g.dart';

abstract class CarsRecord implements Built<CarsRecord, CarsRecordBuilder> {
  static Serializer<CarsRecord> get serializer => _$carsRecordSerializer;

  int? get carid;

  @BuiltValueField(wireName: 'last_ubication')
  LatLng? get lastUbication;

  String? get state;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarsRecordBuilder builder) => builder
    ..carid = 0
    ..state = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarsRecord._();
  factory CarsRecord([void Function(CarsRecordBuilder) updates]) = _$CarsRecord;

  static CarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarsRecordData({
  int? carid,
  LatLng? lastUbication,
  String? state,
}) {
  final firestoreData = serializers.toFirestore(
    CarsRecord.serializer,
    CarsRecord(
      (c) => c
        ..carid = carid
        ..lastUbication = lastUbication
        ..state = state,
    ),
  );

  return firestoreData;
}
