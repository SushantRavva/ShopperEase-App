// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Products1Record> _$products1RecordSerializer =
    new _$Products1RecordSerializer();

class _$Products1RecordSerializer
    implements StructuredSerializer<Products1Record> {
  @override
  final Iterable<Type> types = const [Products1Record, _$Products1Record];
  @override
  final String wireName = 'Products1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Products1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
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
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.catrefID1;
    if (value != null) {
      result
        ..add('catrefID1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  Products1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Products1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'catrefID1':
          result.catrefID1 = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$Products1Record extends Products1Record {
  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? image;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? catrefID1;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Products1Record([void Function(Products1RecordBuilder)? updates]) =>
      (new Products1RecordBuilder()..update(updates))._build();

  _$Products1Record._(
      {this.name,
      this.price,
      this.image,
      this.quantity,
      this.catrefID1,
      this.ffRef})
      : super._();

  @override
  Products1Record rebuild(void Function(Products1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Products1RecordBuilder toBuilder() =>
      new Products1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Products1Record &&
        name == other.name &&
        price == other.price &&
        image == other.image &&
        quantity == other.quantity &&
        catrefID1 == other.catrefID1 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, catrefID1.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Products1Record')
          ..add('name', name)
          ..add('price', price)
          ..add('image', image)
          ..add('quantity', quantity)
          ..add('catrefID1', catrefID1)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Products1RecordBuilder
    implements Builder<Products1Record, Products1RecordBuilder> {
  _$Products1Record? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _catrefID1;
  DocumentReference<Object?>? get catrefID1 => _$this._catrefID1;
  set catrefID1(DocumentReference<Object?>? catrefID1) =>
      _$this._catrefID1 = catrefID1;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Products1RecordBuilder() {
    Products1Record._initializeBuilder(this);
  }

  Products1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _image = $v.image;
      _quantity = $v.quantity;
      _catrefID1 = $v.catrefID1;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Products1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Products1Record;
  }

  @override
  void update(void Function(Products1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Products1Record build() => _build();

  _$Products1Record _build() {
    final _$result = _$v ??
        new _$Products1Record._(
            name: name,
            price: price,
            image: image,
            quantity: quantity,
            catrefID1: catrefID1,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
