import 'package:shahrukh_s_application1/features/intro/bindings/intro_binding.dart';
import 'package:shahrukh_s_application1/features/intro/views/intor_view.dart';
import 'package:shahrukh_s_application1/features/splash/binding/splash_binding.dart';
import 'package:shahrukh_s_application1/features/splash/view/splash_view.dart';
import 'package:shahrukh_s_application1/features/login/view/login_view.dart';
import 'package:shahrukh_s_application1/features/login/binding/login_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_signup_screen/zeedoo_signup_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_signup_screen/binding/zeedoo_signup_binding.dart';
import 'package:shahrukh_s_application1/features/theme_customize/view/theme_customize_view.dart';
import 'package:shahrukh_s_application1/features/theme_customize/binding/theme_customize_binding.dart';
import 'package:shahrukh_s_application1/features/loyalty_program/view/loyalty_program_view.dart';
import 'package:shahrukh_s_application1/features/loyalty_program/binding/loyalty_program_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_nine_screen/zeedoo_screen_nine_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_nine_screen/binding/zeedoo_screen_nine_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_ten_screen/zeedoo_screen_ten_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_ten_screen/binding/zeedoo_screen_ten_binding.dart';
import 'package:shahrukh_s_application1/features/dashboard/view/dashboard_view.dart';
import 'package:shahrukh_s_application1/features/dashboard/binding/dashboard_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_twelve_screen/zeedoo_screen_twelve_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_twelve_screen/binding/zeedoo_screen_twelve_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_thirteen_screen/zeedoo_screen_thirteen_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_thirteen_screen/binding/zeedoo_screen_thirteen_binding.dart';
import 'package:shahrukh_s_application1/features/staff/view/staff_view.dart';
import 'package:shahrukh_s_application1/features/staff/binding/staff_binfing.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_fifteen_screen/zeedoo_screen_fifteen_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_fifteen_screen/binding/zeedoo_screen_fifteen_binding.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_sixteen_screen/zeedoo_screen_sixteen_screen.dart';
import 'package:shahrukh_s_application1/features/zeedoo_screen_sixteen_screen/binding/zeedoo_screen_sixteen_binding.dart';
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
        ZeedooSignupBinding(),
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
        ZeedooScreenNineBinding(),
      ],
    ),
    GetPage(
      name: branding,
      page: () => ZeedooScreenTenScreen(),
      bindings: [
        ZeedooScreenTenBinding(),
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
        ZeedooScreenTwelveBinding(),
      ],
    ),
    GetPage(
      name: subscription,
      page: () => ZeedooScreenThirteenScreen(),
      bindings: [
        ZeedooScreenThirteenBinding(),
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
      page: () => ZeedooScreenFifteenScreen(),
      bindings: [
        ZeedooScreenFifteenBinding(),
      ],
    ),
    GetPage(
      name: product,
      page: () => ZeedooScreenSixteenScreen(),
      bindings: [
        ZeedooScreenSixteenBinding(),
      ],
    ),
    GetPage(
      name: intro,
      page: () => IntroView(),
      binding: IntroBinding(),
    )
  ];
}
