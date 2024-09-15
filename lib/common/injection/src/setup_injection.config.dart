// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../data/data.dart' as _i936;
import '../../../data/repositories/src/wellness_repository.dart' as _i770;
import '../../../domain/domain.dart' as _i265;
import '../../../presentation/screens/home/cubits/wellness/wellness_cubit.dart'
    as _i898;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i265.WellnessRepository>(() =>
        _i770.WellnessRepositoryImpl(gh<_i936.WellnessLocalDatasource>()));
    gh.factory<_i898.WellnessCubit>(
        () => _i898.WellnessCubit(gh<_i265.WellnessRepository>()));
    return this;
  }
}
