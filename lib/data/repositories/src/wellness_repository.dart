import 'package:injectable/injectable.dart';
import 'package:payung_teduh/data/data.dart';
import 'package:payung_teduh/domain/domain.dart';

@LazySingleton(as: WellnessRepository)
class WellnessRepositoryImpl implements WellnessRepository {
  final WellnessLocalDatasource localDatasource;

  WellnessRepositoryImpl(this.localDatasource);

  @override
  Future<List<Wellness>> getWellnessList() async {
    return (await localDatasource.getWellnessList())
        .map((e) => e.toEntity())
        .toList();
  }

  @override
  Future<Wellness?> getWellnessById(String id) async {
    return (await localDatasource.getWellnessById(id))?.toEntity();
  }

  @override
  Future<void> generateDummyData() async {
    final initialWellnessData = [
      WellnessModel(
        imagePath:
            'https://yt3.googleusercontent.com/ytc/AIdro_lPakwZ9lOubKqLFJpb0hSyYf7h6VUg5TIb7ceh-m5pfkU=s900-c-k-c0x00ffffff-no-rj',
        name: 'Relaxing Massage',
        isLimitedOffer: false,
        price: 150000,
        id: '1',
      ),
      WellnessModel(
        imagePath:
            'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/10/2023/09/29/rsz_logo_alfamart-1513131536.jpg',
        name:
            'Aromatherapy from the one and only alfamart in town, it has more than you think you know',
        isLimitedOffer: true,
        price: 200000,
        id: '2',
      ),
      WellnessModel(
        imagePath:
            'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1d119792-e316-44e1-9cda-b758b60ed590_restaurant-image_1697532530306.jpg',
        name:
            'Hot Stone Therapy with stone that has been burnt in hell for 3000 years',
        isLimitedOffer: false,
        price: 250000,
        id: '3',
      ),
      WellnessModel(
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWqfSpaRijIENMJY3DBKzdezf6FAHJgj6Lfw&s',
        name: 'Facial Treatment',
        isLimitedOffer: true,
        price: 180000,
        id: '4',
      ),
      WellnessModel(
        imagePath:
            'https://yt3.googleusercontent.com/ZheQGnZvTS26vHoXBlioYhi6K1lOG1lPPAkzd5eI2DN0PLcprhtBWf0zeiS8lQWMHynCfrR1XAU=s900-c-k-c0x00ffffff-no-rj',
        name: 'Facial Treatment 2',
        isLimitedOffer: true,
        price: 180000,
        id: '5',
      ),
      WellnessModel(
        imagePath:
            'https://cdn.shopify.com/s/files/1/0607/2841/0296/files/Erigo_Company_Profile_page-0001_a8720af5-f44a-45ff-ba0b-76c9c1450b9b.jpg?v=1670683385',
        name: 'Facial Treatment 3',
        isLimitedOffer: true,
        price: 180000,
        id: '6',
      ),
    ];
    await Future.wait(initialWellnessData.map((e) {
      return localDatasource.addWellness(e);
    }));
  }

  @override
  Future<void> clear() async {
    await localDatasource.clear();
  }
}
