import 'package:travel_app/core/util/either.dart';

void main() {
  List<Either<Exception, int>> list = [];
  list.add(Either.left(const FormatException()));
  list.add(Either.right(1));
  for (var element in list) {
    element.when(
        left: (e) => print(e.runtimeType), right: (number) => print(number));
  }
}
