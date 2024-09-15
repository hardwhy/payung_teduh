import 'package:payung_teduh/domain/domain.dart'; // For AsyncResult

abstract class WellnessRepository {
  Future<List<Wellness>> getWellnessList();
  Future<Wellness?> getWellnessById(String id);
  Future<void> generateDummyData();
  Future<void> clear();
}
