import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_usecase_param.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<Authentication> signIn(SignUseCaseParam param) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<bool> signOut(SignUseCaseParam param) {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
