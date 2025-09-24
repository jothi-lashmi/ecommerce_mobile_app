import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/presentation/cart/cart_page.dart';
import 'package:firebase_auth_project/presentation/category/category_page.dart';
import 'package:firebase_auth_project/presentation/home/home_page.dart';
import 'package:firebase_auth_project/presentation/login/login_page.dart';
import 'package:firebase_auth_project/presentation/onboarding/onboardingpage.dart';
import 'package:firebase_auth_project/presentation/splash/splashpage.dart';
import 'package:firebase_auth_project/presentation/user/user_page.dart';
import 'package:firebase_auth_project/presentation/wishlist/wishlist_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  // RouteType get defaultRouteType => RouteType.custom(barrierColor: );
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true, path: '/'),
    AutoRoute(page: OnBoardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: WishlistRoute.page),
    AutoRoute(page: UserRoute.page),
  ];
}
