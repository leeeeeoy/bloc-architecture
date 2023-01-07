import 'package:bloc_architecture/injection/injection.dart';

enum Flavor { dev, live }

class AppConfig {
  final Flavor flavor;
  final String baseUrl;

  AppConfig.dev()
      : flavor = Flavor.dev,
        baseUrl = 'https://my-test-graphql.co.kr/graphql';

  AppConfig.live()
      : flavor = Flavor.live,
        baseUrl = 'https://my-graphql.co.kr/graphql';
}

AppConfig appConfig = AppConfig.live();

Future<void> initializedApp({
  Flavor flavor = Flavor.live,
  bool isDevicePreview = false,
}) async {
  if (flavor == Flavor.dev) {
    configureDependencies(env: 'dev');

    appConfig = AppConfig.dev();
  } else {
    configureDependencies(env: 'live');

    appConfig = AppConfig.live();
  }
}
