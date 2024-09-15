import 'package:hive/hive.dart';
// import 'package:injectable/injectable.dart';
import 'package:payung_teduh/data/data.dart';

// @LazySingleton(as: WellnessLocalDatasource)
class WellnessLocalDatasourceImpl implements WellnessLocalDatasource {
  final Box<WellnessModel> wellnessBox;

  WellnessLocalDatasourceImpl(this.wellnessBox);

  @override
  Future<void> addWellness(WellnessModel wellness) async {
    await wellnessBox.put(wellness.id, wellness);
  }

  @override
  Future<List<WellnessModel>> getWellnessList() async {
    return wellnessBox.values.toList();
  }

  @override
  Future<WellnessModel?> getWellnessById(String id) async {
    return wellnessBox.get(id);
  }

  @override
  Future<void> removeWellness(String id) async {
    await wellnessBox.delete(id);
  }

  @override
  Future<void> clear() async {
    await wellnessBox.clear();
  }
}
