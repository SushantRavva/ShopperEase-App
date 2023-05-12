// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Categories1Record> _$categories1RecordSerializer =
    new _$Categories1RecordSerializer();

class _$Categories1RecordSerializer
    implements StructuredSerializer<Categories1Record> {
  @override
  final Iterable<Type> types = const [Categories1Record, _$Categories1Record];
  @override
  final String wireName = 'Categories1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Categories1Record object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  Categories1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Categories1RecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$Categories1Record extends Categories1Record {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Categories1Record(
          [void Function(Categories1RecordBuilder)? updates]) =>
      (new Categories1RecordBuilder()..update(updates))._build();

  _$Categories1Record._({this.name, this.image, this.ffRef}) : super._();

  @override
  Categories1Record rebuild(void Function(Categories1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Categories1RecordBuilder toBuilder() =>
      new Categories1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories1Record &&
        name == other.name &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Categories1Record')
          ..add('name', name)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Categories1RecordBuilder
    implements Builder<Categories1Record, Categories1RecordBuilder> {
  _$Categories1Record? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Categories1RecordBuilder() {
    Categories1Record._initializeBuilder(this);
  }

  Categories1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Categories1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Categories1Record;
  }

  @override
  void update(void Function(Categories1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Categories1Record build() => _build();

  _$Categories1Record _build() {
    final _$result = _$v ??
        new _$Categories1Record._(name: name, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
