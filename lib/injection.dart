import 'package:firebase_auth_project/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit(initializerName: 'init')
void configureInjection(String env) => getIt.init(environment: env);
