import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products1_record.g.dart';

abstract class Products1Record
    implements Built<Products1Record, Products1RecordBuilder> {
  static Serializer<Products1Record> get serializer =>
      _$products1RecordSerializer;

  String? get name;

  String? get price;

  String? get image;

  int? get quantity;

  DocumentReference? get catrefID1;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Products1RecordBuilder builder) => builder
    ..name = ''
    ..price = ''
    ..image = ''
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products1');

  static Stream<Products1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Products1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Products1Record._();
  factory Products1Record([void Function(Products1RecordBuilder) updates]) =
      _$Products1Record;

  static Products1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProducts1RecordData({
  String? name,
  String? price,
  String? image,
  int? quantity,
  DocumentReference? catrefID1,
}) {
  final firestoreData = serializers.toFirestore(
    Products1Record.serializer,
    Products1Record(
      (p) => p
        ..name = name
        ..price = price
        ..image = image
        ..quantity = quantity
        ..catrefID1 = catrefID1,
    ),
  );

  return firestoreData;
}
