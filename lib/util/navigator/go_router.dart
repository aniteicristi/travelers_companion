import 'package:go_router/go_router.dart';
import 'package:travelers_companion/presentation/home_page/home_page.dart';
import 'package:travelers_companion/util/navigator/app_routes.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRoutes.home,
      path: '/',
      builder: (context, state) => HomePage(),
    ),
  ],
);
