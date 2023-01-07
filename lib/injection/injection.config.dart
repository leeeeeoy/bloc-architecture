// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloc_architecture/feature/auth/data/mock/mock_authentication_repository.dart'
    as _i5;
import 'package:bloc_architecture/feature/auth/data/repository/authentication_repository_impl.dart'
    as _i4;
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart'
    as _i3;
import 'package:bloc_architecture/feature/auth/domain/usecase/sign_in_usecase.dart'
    as _i6;
import 'package:bloc_architecture/feature/auth/domain/usecase/sign_out_usecase.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _live = 'live';
const String _dev = 'dev';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthenticationRepository>(
    () => _i4.AuthenticationRepositoryImpl(),
    registerFor: {_live},
  );
  gh.lazySingleton<_i3.AuthenticationRepository>(
    () => _i5.MockAuthenticationRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i6.SignInUseCase>(() => _i6.SignInUseCase(
      authenticationRepository: gh<_i3.AuthenticationRepository>()));
  gh.lazySingleton<_i7.SignOutUseCase>(() => _i7.SignOutUseCase(
      authenticationRepository: gh<_i3.AuthenticationRepository>()));
  return getIt;
}
