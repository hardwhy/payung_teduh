import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:payung_teduh/data/data.dart';

import 'setup_injection.config.dart' as injection_config;

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: true,
)
configureDependencies() async {
  getIt.$initGetIt();
  await hiveDeps();
}

hiveDeps() async {
   // Initialize Hive
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  // Register the WellnessModel Adapter
  Hive.registerAdapter(WellnessModelAdapter());

  // Open the Hive box for WellnessModel and register it with GetIt
  final wellnessBox = await Hive.openBox<WellnessModel>('wellnessBox');
  getIt.registerSingleton<Box<WellnessModel>>(wellnessBox);

  // Register Local Data Source
  getIt.registerSingleton<WellnessLocalDatasource>(
    WellnessLocalDatasourceImpl(getIt<Box<WellnessModel>>()),
  );
}
