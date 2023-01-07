import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';
import 'package:injectable/injectable.dart';

@Environment('live')
@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<Authentication> signIn(SignInUseCaseParam param) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<bool> signOut(String param) {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
