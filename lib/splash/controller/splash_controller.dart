import 'package:get/get.dart';
import '../enum/step_type.dart';

class SplashController extends GetxController{
  Rx<StepType> loadStep = StepType.dataLoad.obs;

  changeStep(StepType step){
    loadStep.value = step;
  }
}