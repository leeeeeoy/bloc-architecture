import 'package:bloc_architecture/core/usecase/usecase.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_usecase_param.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignOutUseCase implements UseCase<bool, SignUseCaseParam> {
  final AuthenticationRepository authenticationRepository;

  const SignOutUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<bool> execute(SignUseCaseParam param) =>
      authenticationRepository.signOut(param);
}
