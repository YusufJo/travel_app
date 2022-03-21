import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import 'router.gr.dart';

class InheritedRouteWidget extends InheritedWidget {
  final PageRouteInfo route;
  const InheritedRouteWidget(
      {Key? key, required this.route, required Widget child})
      : super(key: key, child: child);

  static InheritedRouteWidget of<T>(BuildContext context) {
    final InheritedRouteWidget? result =
        context.dependOnInheritedWidgetOfExactType<InheritedRouteWidget>();
    assert(result != null, 'Expected $T, but found null');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedRouteWidget oldWidget) {
    return false;
  }

  VoidCallback get navigate {
    return () => GetIt.I.get<AppRouter>().push(route);
  }
}
