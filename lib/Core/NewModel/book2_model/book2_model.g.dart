// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book2_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class Book2ModelAdapter extends TypeAdapter<Book2Model> {
  @override
  final int typeId = 0;

  @override
  Book2Model read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Book2Model(
      kind: fields[0] as String?,
      totalItems: fields[1] as num?,
      items: (fields[2] as List?)?.cast<Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, Book2Model obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.kind)
      ..writeByte(1)
      ..write(obj.totalItems)
      ..writeByte(2)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book2ModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
