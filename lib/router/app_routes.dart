import 'package:get/get.dart';
import 'package:smartmoney/pages/auth/forgot_password/forgot.dart';
import 'package:smartmoney/pages/auth/login/login.dart';
import 'package:smartmoney/pages/auth/reset_password/reset_password.dart';
import 'package:smartmoney/pages/auth/signup/signup.dart';
import 'package:smartmoney/pages/chat/chat.dart';
import 'package:smartmoney/pages/dashboard/dashboard.dart';
import 'package:smartmoney/pages/reports/reports.dart';
import 'package:smartmoney/pages/settings/settings.dart';
import 'package:smartmoney/pages/shopping/shopping.dart';

class AppRoutes {
  static const String login = '/login';

  static const String signup = '/signup';

  static const String forgot = '/forgot';

  static const String dashboard = '/dashboard';

  static const String reset = '/reset';

  static const String chat = '/chat';

  static const String settings = '/settings';

  static const String shopping = '/shopping';

  static const String reports = '/reports';

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => const Login(),
    ),
    GetPage(
      name: signup,
      page: () => const SignUp(),
    ),
    GetPage(
      name: forgot,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: dashboard,
      page: () => const Dashboard(),
    ),
    GetPage(
      name: reset,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: chat,
      page: () => const Chat(),
    ),
    GetPage(
      name: settings,
      page: () => const Settings(),
    ),
    GetPage(
      name: shopping,
      page: () => const Shopping(),
    ),
    GetPage(
      name: reports,
      page: () => const Reports(),
    ),
  ];
}
