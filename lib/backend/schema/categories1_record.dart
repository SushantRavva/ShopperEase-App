import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categories1_record.g.dart';

abstract class Categories1Record
    implements Built<Categories1Record, Categories1RecordBuilder> {
  static Serializer<Categories1Record> get serializer =>
      _$categories1RecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Categories1RecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categories1');

  static Stream<Categories1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Categories1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Categories1Record._();
  factory Categories1Record([void Function(Categories1RecordBuilder) updates]) =
      _$Categories1Record;

  static Categories1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategories1RecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    Categories1Record.serializer,
    Categories1Record(
      (c) => c
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
