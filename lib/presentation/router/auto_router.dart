import 'package:auto_route/auto_route.dart';
import 'package:up4date/presentation/router/auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RegistrationRoute.page,
        ),
        AutoRoute(
          initial: true,
          page: AuthRoute.page,
        ),
      ];
}
