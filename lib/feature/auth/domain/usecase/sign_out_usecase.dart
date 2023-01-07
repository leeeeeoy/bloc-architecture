import 'package:bloc_architecture/core/usecase/usecase.dart';
import 'package:bloc_architecture/feature/auth/domain/repository/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignOutUseCase implements UseCase<bool, String> {
  final AuthenticationRepository authenticationRepository;

  const SignOutUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<bool> execute(String param) => authenticationRepository.signOut(param);
}
