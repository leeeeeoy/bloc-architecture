import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_usecase_param.dart';

abstract class AuthenticationRepository {
  Future<Authentication> signIn(SignUseCaseParam param);

  Future<bool> signOut(SignUseCaseParam param);
}
