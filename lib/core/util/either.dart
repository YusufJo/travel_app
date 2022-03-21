class Either<L, R> {
  final L? _left;
  final R? _right;

  const Either._({L? left, R? right})
      : _left = left,
        _right = right;

  factory Either.left(L left) {
    return Either._(left: left, right: null);
  }

  factory Either.right(R right) {
    return Either._(left: null, right: right);
  }

  void when({required void Function(L) left, required void Function(R) right}) {
    if (_left != null) {
      left(_left!);
    } else {
      right(_right!);
    }
  }
}
