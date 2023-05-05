import 'dart:async';

import 'package:bloc_architecture/feature/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:bloc_architecture/feature/auth/presentation/sign_in/sign_in_page.dart';
import 'package:bloc_architecture/feature/home/presentation/home_page.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock/router.dart';

class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class FakeRoute extends Fake implements Route {}

void main() {
  late SignInBloc signInBloc;
  late NavigatorObserver navigatorObserver;

  setUp(() {
    signInBloc = MockSignInBloc();
    registerFallbackValue(FakeRoute());
    navigatorObserver = MockNavigatorObserver();
  });

  group('SignInPage', () {
    testWidgets('초기 렌더링 확인', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      expect(find.text('SignInPage'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('키보드가 올라왔을 때, 화면을 누르면 키보드가 내려간다.', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.tap(find.byKey(const Key('emailTextField')));

      expect(tester.testTextInput.isVisible, isTrue);

      await tester.tap(find.byType(AppBar));

      expect(tester.testTextInput.isVisible, isFalse);
    });

    testWidgets('email, password를 입력한다', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.enterText(
        find.byKey(const Key('emailTextField')),
        '아이디 입력해보겠습니다',
      );

      await tester.enterText(
        find.byKey(const Key('passwordTextField')),
        '비밀번호도 입력해보겠습니다',
      );

      expect(find.text('아이디 입력해보겠습니다'), findsOneWidget);
      expect(find.text('비밀번호도 입력해보겠습니다'), findsOneWidget);
    });

    testWidgets('빈 값 입력 시, 오류 메세지를 띄운다', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));

      await tester.pump(const Duration(milliseconds: 100));

      expect(find.text('아이디를 입력해주세요'), findsOneWidget);
      expect(find.text('비밀번호를 입력해주세요'), findsOneWidget);
    });

    testWidgets('IconButton 클릭 시 email, password가 삭제된다.', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.enterText(
        find.byKey(const Key('emailTextField')),
        '아이디 입력해보겠습니다',
      );

      await tester.enterText(
        find.byKey(const Key('passwordTextField')),
        '비밀번호도 입력해보겠습니다',
      );

      await tester.tap(find.byIcon(Icons.cancel).first);
      await tester.tap(find.byIcon(Icons.cancel).last);

      expect(find.text('아이디 입력해보겠습니다'), findsNothing);
      expect(find.text('비밀번호도 입력해보겠습니다'), findsNothing);
    });

    testWidgets('버튼을 눌렀을 때, 이벤트가 들어간다', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInInitial(),
      );

      when(
        () => signInBloc.add(const SignInRequested(
          email: 'email',
          password: 'password',
        )),
      ).thenAnswer((_) {});

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.enterText(
        find.byKey(const Key('emailTextField')),
        'email',
      );

      await tester.enterText(
        find.byKey(const Key('passwordTextField')),
        'password',
      );

      await tester.tap(find.byType(ElevatedButton));

      verify(
        () => signInBloc.add(const SignInRequested(
          email: 'email',
          password: 'password',
        )),
      ).called(1);
    });

    testWidgets('로딩 시, 인디케이터를 띄운다.', (tester) async {
      when(() => signInBloc.state).thenAnswer(
        (invocation) => const SignInLoading(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('에러 시, 다이얼로그를 띄운다.', (tester) async {
      whenListen(
        signInBloc,
        Stream.fromIterable([const SignInLoading(), const SignInError()]),
        initialState: const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(CupertinoAlertDialog), findsOneWidget);
    });

    testWidgets('다이얼로그의 확인 버튼을 누르면 다이얼로그가 닫힌다.', (tester) async {
      whenListen(
        signInBloc,
        Stream.fromIterable([const SignInLoading(), const SignInError()]),
        initialState: const SignInInitial(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: signInBloc,
            child: const SignInPage(),
          ),
          navigatorObservers: [navigatorObserver],
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(CupertinoAlertDialog), findsOneWidget);

      await tester.tap(find.byType(CupertinoDialogAction));

      verify(() => navigatorObserver.didPop(any(), any()));
    });

    testWidgets('성공 시, HomePage로 이동한다.', (tester) async {
      whenListen(
        signInBloc,
        Stream.fromIterable([
          const SignInLoading(),
          const SignInSucceed(),
        ]),
        initialState: const SignInInitial(),
      );

      final router = generateMockRouter();

      await tester.pumpWidget(
        BlocProvider.value(
          value: signInBloc,
          child: MaterialApp.router(
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(SignInPage), findsNothing);
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
