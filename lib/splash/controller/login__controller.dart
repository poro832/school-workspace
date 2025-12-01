import 'package:dantol_market_app/common/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  void googleLogin() async{
    // 간단한 목업 로그인
    Get.dialog(
      AlertDialog(
        title: const Text('Google 로그인'),
        content: const Text('Google 로그인이 완료되었습니다!'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              // 로그인 상태로 변경
              Get.find<AuthenticationController>().mockLogin();
            },
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }
  
  void appleLogin() async{
    // 간단한 목업 로그인
    Get.dialog(
      AlertDialog(
        title: const Text('Apple 로그인'),
        content: const Text('Apple 로그인이 완료되었습니다!'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              // 로그인 상태로 변경
              Get.find<AuthenticationController>().mockLogin();
            },
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }
}