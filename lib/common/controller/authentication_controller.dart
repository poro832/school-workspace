import 'package:dantol_market_app/common/enum/authhentication_status.dart';
import 'package:get/get.dart';
import 'package:dantol_market_app/user/model/user_model.dart';

class AuthenticationController extends GetxController {
  Rx<AuthhenticationStatus> status = AuthhenticationStatus.init.obs;
  Rx<UserModel?> userModel = Rx<UserModel?>(null);

  void authCheck()async{
    // 목업: 잠시 후 unauthenticated 상태로 설정
    await Future.delayed(const Duration(milliseconds: 500));
    status.value = AuthhenticationStatus.unauthenticated;
  }
  
  void mockLogin(){
    // 목업 로그인: 간단하게 로그인 상태로 변경
    userModel.value = const UserModel(
      uid: 'mock_user_id',
      email: 'mock@example.com',
      name: '테스트 사용자',
    );
    status.value = AuthhenticationStatus.authentication;
  }
  
  void logout() async{
    // 목업 로그아웃
    userModel.value = null;
    status.value = AuthhenticationStatus.unauthenticated;
  }
}