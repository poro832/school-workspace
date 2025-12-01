import 'package:dantol_market_app/btn.dart';
import 'package:flutter/material.dart';
import 'package:dantol_market_app/common/app_font.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
class InitStartPage extends StatelessWidget{
  final Function() onStart;
  const InitStartPage({super.key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
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
              '중고거래부터 동네정보까지,\n지금 당장 단톨마켓을 시작해보세요!',
              align: TextAlign.center,
              color: Colors.white.withOpacity(0.6),
              size: 18,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
        left: 25, right: 25, bottom: 25 + Get.mediaQuery.viewPadding.bottom),
        child: Btn(
          onTap: onStart,
                child: const AppFont(
                  '시작하기',
                  align: TextAlign.center,
                  size: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}