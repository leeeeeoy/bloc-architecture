import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';

abstract class AuthenticationRepository {
  Future<Authentication> signIn(SignInUseCaseParam param);

  Future<bool> signOut(String param);
}
