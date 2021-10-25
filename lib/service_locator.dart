import 'package:get_it/get_it.dart';
import 'package:travel_app/route/router.gr.dart';

void setupGetIt() {
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
}
