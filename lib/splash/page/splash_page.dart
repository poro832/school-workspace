import 'package:dantol_market_app/common/app_font.dart';
import 'package:dantol_market_app/common/compenents/getx_listener.dart';
import 'package:dantol_market_app/common/controller/authentication_controller.dart';
import 'package:dantol_market_app/common/controller/data_load_controller.dart';
import 'package:dantol_market_app/common/enum/authhentication_status.dart';
import 'package:dantol_market_app/splash/enum/step_type.dart';
import 'package:flutter/material.dart';
import '../controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController>{
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetxListener<AuthhenticationStatus>(
          listen: (AuthhenticationStatus status){
            switch(status){
              case AuthhenticationStatus.unknown:
              break;
              case AuthhenticationStatus.authentication:
              Get.offAllNamed('/home');
              break;
              case AuthhenticationStatus.unauthenticated:
              Get.offAllNamed('/login');
              break;
              case AuthhenticationStatus.init:
              break;
            }
          },
        stream: Get.find<AuthenticationController>().status,
        child : GetxListener<bool>(
          listen: (bool value){
            if(value){
              controller.changeStep(StepType.authCheck);
            }
          },
        stream: Get.find<DataLoadController>().isDataLoad,
        child : GetxListener<StepType>(
          initCall:(){
            controller.loadStep(StepType.dataLoad);
          },
          listen: (StepType? value){
            if(value == null) return;
            switch(value){
              case StepType.init:
              case StepType.dataLoad:
              Get.find<DataLoadController>().loadData();
              break;
              case StepType.authCheck:
              Get.find<AuthenticationController>().authCheck();
              break;
            } 
            },
        stream: controller.loadStep,
        child : const _SplashView(),
      ),
      ),
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:   (){
        controller.changeStep(StepType.authCheck);
      }),
    );
  }
}
class _SplashView extends GetView<SplashController>{
  const _SplashView();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200,),
        Expanded(
          child:Column(
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
          ),
        ),
        SizedBox(
          height: 200,
          child: Column(
            children: [
            Obx(
              (){
                return Text(
                  '${controller.loadStep.value.name}중 입니다.',
                  style: const TextStyle(color: Colors.white),
                );
              },
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              strokeWidth: 1, color: Colors.white)
            ],
            ),
          )
      ],
    );
  }
}