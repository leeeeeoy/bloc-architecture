# bloc_architecture

Bloc을 이용한 Architecture 작성 연습을 위한 프로젝트입니다.

<br/>

## 기본 구조

Clean Architecture를 참고하여 3-Layer(Data, Domain, Presentation) 구조를 따라 작성했습니다.

<br/>


## Test coverage

test 실행

```zsh
flutter test --coverage   
```

<br/>

coverage 결과 확인

```zsh
genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html      
```



