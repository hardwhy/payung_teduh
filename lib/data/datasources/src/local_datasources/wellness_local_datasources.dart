import 'package:payung_teduh/data/data.dart';

abstract class WellnessLocalDatasource {
  Future<void> addWellness(WellnessModel wellness);
  Future<List<WellnessModel>> getWellnessList();
  Future<WellnessModel?> getWellnessById(String id);
  Future<void> removeWellness(String id);
  Future<void> clear();
}
