import 'package:bloc_architecture/feature/auth/domain/entity/authentication.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/param/sign_in_usecase_param.dart';
import 'package:bloc_architecture/feature/auth/domain/usecase/sign_in_usecase.dart';
import 'package:bloc_architecture/feature/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSignInUseCase extends Mock implements SignInUseCase {}

void main() {
  late SignInBloc signInBloc;
  late SignInUseCase signInUseCase;

  const mockEmail = 'email';
  const mockPassword = 'password';

  const mockParam = SignInUseCaseParam(
    email: mockEmail,
    password: mockPassword,
  );

  const mockAuthentication = Authentication(accessToken: 'accessToken');

  setUp(() {
    signInUseCase = MockSignInUseCase();

    signInBloc = SignInBloc(
      signInUseCase: signInUseCase,
    );
  });

  group('SignInBloc', () {
    test('초기 상태 확인', () {
      final state = signInBloc.state;

      expect(state, const SignInInitial());
    });

    group('SignInRequested', () {
      blocTest<SignInBloc, SignInState>(
        '요청 성공: SignInLoading, SignInSucceed 반영된다.',
        setUp: () => when(() => signInUseCase.execute(mockParam))
            .thenAnswer((_) => Future.value(mockAuthentication)),
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInRequested(
          email: mockEmail,
          password: mockPassword,
        )),
        expect: () => const <SignInState>[
          SignInLoading(),
          SignInSucceed(),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        '요청 실패: SignInLoading, SignInError 반영된다.',
        setUp: () => when(
          () => signInUseCase.execute(mockParam),
        ).thenThrow(Exception()),
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInRequested(
          email: mockEmail,
          password: mockPassword,
        )),
        expect: () => const <SignInState>[
          SignInLoading(),
          SignInError(),
        ],
      );
    });
  });
}
