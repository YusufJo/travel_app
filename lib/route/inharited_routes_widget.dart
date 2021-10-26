import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:travel_app/route/router.gr.dart';

class InharitedRouteWidget extends InheritedWidget {
  final PageRouteInfo route;
  const InharitedRouteWidget(
      {Key? key, required this.route, required Widget child})
      : super(key: key, child: child);

  static InharitedRouteWidget of<T>(BuildContext context) {
    final InharitedRouteWidget? result =
        context.dependOnInheritedWidgetOfExactType<InharitedRouteWidget>();
    assert(result != null, 'Expected $T, but found null');
    return result!;
  }

  @override
  bool updateShouldNotify(InharitedRouteWidget oldWidget) {
    return false;
  }

  VoidCallback get navigate {
    return () => GetIt.I.get<AppRouter>().push(route);
  }
}
