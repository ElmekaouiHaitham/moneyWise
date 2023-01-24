
import 'package:get/get.dart';
import 'package:smartmoney/data/auth/api.dart';
import 'package:smartmoney/pages/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:smartmoney/pages/auth/login/controller/login_controller.dart';
import 'package:smartmoney/pages/auth/reset_password/controller/change_password_controller.dart';
import 'package:smartmoney/pages/auth/signup/controller/signup_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient());
    Get.lazyPut(() => SignUpController(Get.find()));
    Get.lazyPut(() => LoginController(Get.find()));
    Get.lazyPut(() => ForgotPasswordController(Get.find()));
    Get.lazyPut(() => ChangePasswordController(Get.find()));
  }
}
