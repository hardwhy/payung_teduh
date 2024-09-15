import 'package:hive/hive.dart';
import 'package:payung_teduh/domain/domain.dart';

part 'wellness.g.dart'; // Required for Hive type adapter generation

@HiveType(typeId: 0)
class WellnessModel {
  @HiveField(0)
  final String imagePath;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final bool isLimitedOffer;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final String id; // shortUUID

  WellnessModel({
    required this.imagePath,
    required this.name,
    required this.isLimitedOffer,
    required this.price,
    required this.id,
  });

  Wellness toEntity() {
    return Wellness(
      imagePath: imagePath,
      name: name,
      isLimitedOffer: isLimitedOffer,
      price: price,
      id: id,
    );
  }
}
