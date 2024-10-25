import 'package:auto_route/auto_route.dart';
import 'package:up4date/presentation/router/auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EmptyShellRoute('authenticated'),
          path: '/authenticated',
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
              path: 'home',
            ),
          ],
        ),
        AutoRoute(
          initial: true,
          page: EmptyShellRoute('unauthenticated'),
          path: '/unauthenticated',
          children: [
            AutoRoute(
              initial: true,
              page: AuthRoute.page,
            ),
            AutoRoute(
              page: RegistrationRoute.page,
            ),
          ],
        ),
      ];
}
