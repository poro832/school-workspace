import 'package:dantol_market_app/user/model/user_model.dart';

class AuthenticationRepository{
  // 목업용 간단한 Repository
  
  Stream<UserModel?> get user{
    // 목업: 빈 스트림 반환
    return Stream.value(null);
  }
  
  Future<void> signInWithGoogle() async{
    // 목업: 아무 동작 안함
    await Future.delayed(const Duration(milliseconds: 100));
  }
  
  Future<void> signInWithApple() async{
    // 목업: 아무 동작 안함
    await Future.delayed(const Duration(milliseconds: 100));
  }
  
  Future<void> logOut() async{
    // 목업: 아무 동작 안함
    await Future.delayed(const Duration(milliseconds: 100));
  }
} 