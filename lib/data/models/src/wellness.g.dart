// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WellnessModelAdapter extends TypeAdapter<WellnessModel> {
  @override
  final int typeId = 0;

  @override
  WellnessModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WellnessModel(
      imagePath: fields[0] as String,
      name: fields[1] as String,
      isLimitedOffer: fields[2] as bool,
      price: fields[3] as double,
      id: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WellnessModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.imagePath)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isLimitedOffer)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WellnessModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
