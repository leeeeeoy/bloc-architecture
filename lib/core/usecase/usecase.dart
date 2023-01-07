abstract class UseCase<T, Param> {
  Future<T> execute(Param param);
}
