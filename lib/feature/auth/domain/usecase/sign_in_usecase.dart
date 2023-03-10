import 'package:bloc_architecture/core/usecase/usecase.dart';
import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignInUseCase implements UseCase<Authentication, SignInUseCaseParam> {
  final AuthenticationRepository authenticationRepository;

  const SignInUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<Authentication> execute(SignInUseCaseParam param) =>
      authenticationRepository.signIn(param);
}
