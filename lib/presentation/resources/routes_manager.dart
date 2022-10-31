import 'package:flutter/material.dart';
import 'package:zeeddodashboard/presentation/add_branding/add_banding_view.dart';
import 'package:zeeddodashboard/presentation/dash_board/dashbord_view.dart';
import 'package:zeeddodashboard/presentation/products/products_view.dart';

import '../add_ur_shop/add_ur_shop_view.dart';
import '../u_shop_details/ur_shop_details_view.dart';
import '/presentation/bottom_bar/BottomBarView.dart';
import '/presentation/setting/setting_view.dart';

import '../onboarding/onboarding_view.dart';
import '../login/login_view.dart';
import '../register/register_view.dart';
import '../splash/splash_view.dart';
import '../undefined/undefined_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String bottomBarRout = "/bottomBar";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String onBoardingRoute = "/onBoarding";
  static const String addUrShop = "/addUrShop";
  static const String urShopDetails = "/urShopDetails";
  static const String product = "/product";
  static const String dashBoard = "/dashBoard";
  static const String addBrandingDetails = "/addBrandingDetails";
  static const String undefinedRoute = "/undefined";
  static const String settingRoute = "/setting";
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.addUrShop:
        return MaterialPageRoute(builder: (_) => const AddUrShop());
      case Routes.bottomBarRout:
        return MaterialPageRoute(builder: (_) => const BottomBarView());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingView());
      case Routes.product:
        return MaterialPageRoute(builder: (_) => ProductsView());
      case Routes.dashBoard:
        return MaterialPageRoute(builder: (_) => const DashBoardView());
      case Routes.urShopDetails:
        return MaterialPageRoute(builder: (_) => const UrShopDetailsView());
      case Routes.addBrandingDetails:
        return MaterialPageRoute(builder: (_) =>  AddBrandingDetails());
      default:
        return MaterialPageRoute(builder: (_) => const UndefinedView());
    }
  }
}
