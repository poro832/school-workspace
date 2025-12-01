import 'package:dantol_market_app/btn.dart';
import 'package:dantol_market_app/common/app_font.dart';
import 'package:dantol_market_app/splash/controller/login__controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginPage extends GetView<LoginController>{
  const LoginPage({super.key});
  Widget _logoView(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width:99,
          height:116,
          child: Image.asset('assets/icons.png'),
        ),
        const SizedBox(height: 40),
        const AppFont(
          '당신 근처의 단톨마켓',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 15),
        AppFont(
          '중고거래부터 동네정보까지,\n지금 내 동네를 선택하고 시작해보세요!',
          align: TextAlign.center,
          color: Colors.white.withOpacity(0.6),
          size: 18,
        ),
      ],
    );
  }
  Widget _textDivier(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Expanded(
          child: Divider(
            color : Colors.white,
            ),
          ),
        Padding(padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
          child: AppFont(
            '회원 가입/로그인',
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Divider(
            color : Colors.white,
            ),
          ),
       ],
      ),
    );
  }
    Widget _snsLoginBtn(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child : Column(
          children:[
            Btn(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              onTap: controller.googleLogin,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Image.asset('assets/google_logo.png', width: 24, height: 24),
                  const SizedBox(width: 12),
                  const AppFont(
                    'Google로 계속하기',
                    color: Colors.black,
                    size: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Btn(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              onTap: controller.appleLogin,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Image.asset('assets/apple_logo.png', width: 24, height: 24),
                  const SizedBox(width: 12),
                  const AppFont(
                    'Apple로 계속하기',
                    color: Colors.black,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _logoView(),
          _textDivier(),
          _snsLoginBtn(),
        ],
      ),
    );
  }
}