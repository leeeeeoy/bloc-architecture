import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';
import 'package:injectable/injectable.dart';

@Environment('dev')
@LazySingleton(as: AuthenticationRepository)
class MockAuthenticationRepository implements AuthenticationRepository {
  @override
  Future<Authentication> signIn(SignInUseCaseParam param) =>
      Future.delayed(const Duration(seconds: 1)).then(
        (value) => Authentication(accessToken: 'accessToken'),
      );

  @override
  Future<bool> signOut(String param) {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
