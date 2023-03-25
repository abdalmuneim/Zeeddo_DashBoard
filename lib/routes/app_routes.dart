import 'package:shahrukh_s_application1/features/intro/bindings/intro_binding.dart';
import 'package:shahrukh_s_application1/features/intro/views/intor_view.dart';
import 'package:shahrukh_s_application1/features/splash/binding/splash_binding.dart';
import 'package:shahrukh_s_application1/features/splash/view/splash_view.dart';
import 'package:shahrukh_s_application1/features/login/view/login_view.dart';
import 'package:shahrukh_s_application1/features/login/binding/login_binding.dart';
import 'package:shahrukh_s_application1/features/signup/view/signup_view.dart';
import 'package:shahrukh_s_application1/features/signup/binding/signup_binding.dart';
import 'package:shahrukh_s_application1/features/theme_customize/view/theme_customize_view.dart';
import 'package:shahrukh_s_application1/features/theme_customize/binding/theme_customize_binding.dart';
import 'package:shahrukh_s_application1/features/loyalty_program/view/loyalty_program_view.dart';
import 'package:shahrukh_s_application1/features/loyalty_program/binding/loyalty_program_binding.dart';
import 'package:shahrukh_s_application1/features/add_product/view/add_product_view.dart';
import 'package:shahrukh_s_application1/features/add_product/binding/add_product_binding.dart';
import 'package:shahrukh_s_application1/features/branding/view/branding_view.dart';
import 'package:shahrukh_s_application1/features/branding/binding/branding_binding.dart';
import 'package:shahrukh_s_application1/features/dashboard/view/dashboard_view.dart';
import 'package:shahrukh_s_application1/features/dashboard/binding/dashboard_binding.dart';
import 'package:shahrukh_s_application1/features/coupon/view/coupon_view.dart';
import 'package:shahrukh_s_application1/features/coupon/binding/coupon_binding.dart';
import 'package:shahrukh_s_application1/features/subscription/view/subscription_view.dart';
import 'package:shahrukh_s_application1/features/subscription/binding/subscription_binding.dart';
import 'package:shahrukh_s_application1/features/staff/view/staff_view.dart';
import 'package:shahrukh_s_application1/features/staff/binding/staff_binfing.dart';
import 'package:shahrukh_s_application1/features/shop/shop_view.dart';
import 'package:shahrukh_s_application1/features/shop/binding/shop_binding.dart';
import 'package:shahrukh_s_application1/features/product/view/product_view.dart';
import 'package:shahrukh_s_application1/features/product/binding/product_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = '/splash_screen';

  static const String intro = '/intro_view';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String themeCustomize = '/screen_seven_screen';

  static const String loyaltyProgram = '/screen_eight_screen';

  static const String addProduct = '/screen_nine_screen';

  static const String branding = '/screen_ten_screen';

  static const String dashboard = '/screen_eleven_screen';

  static const String coupon = '/screen_twelve_screen';

  static const String subscription = '/screen_thirteen_screen';

  static const String staff = '/screen_fourteen_screen';

  static const String shop = '/screen_fifteen_screen';

  static const String product = '/screen_sixteen_screen';

  static String initialRoute = splash;

  static List<GetPage> pages = [
    GetPage(
      name: splash,
      page: () => SplashView(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginView(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => ZeedooSignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: themeCustomize,
      page: () => ThemeCustomizeView(),
      bindings: [
        ThemeCustomizeBinding(),
      ],
    ),
    GetPage(
      name: loyaltyProgram,
      page: () => LoyaltyProgramView(),
      bindings: [
        LoyaltyProgramBinding(),
      ],
    ),
    GetPage(
      name: addProduct,
      page: () => ZeedooScreenNineScreen(),
      bindings: [
        AddProductBinding(),
      ],
    ),
    GetPage(
      name: branding,
      page: () => ZeedooScreenTenScreen(),
      bindings: [
        BrandingBinding(),
      ],
    ),
    GetPage(
      name: dashboard,
      page: () => DashboardView(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: coupon,
      page: () => ZeedooScreenTwelveScreen(),
      bindings: [
        CouponBinding(),
      ],
    ),
    GetPage(
      name: subscription,
      page: () => SubscriptionView(),
      bindings: [
        SubscriptionBinding(),
      ],
    ),
    GetPage(
      name: staff,
      page: () => StaffView(),
      bindings: [
        StaffBinding(),
      ],
    ),
    GetPage(
      name: shop,
      page: () => ShopView(),
      bindings: [
        ShopBinding(),
      ],
    ),
    GetPage(
      name: product,
      page: () => ZeedooScreenSixteenScreen(),
      bindings: [
        ProductBinding(),
      ],
    ),
    GetPage(
      name: intro,
      page: () => IntroView(),
      binding: IntroBinding(),
    )
  ];
}
