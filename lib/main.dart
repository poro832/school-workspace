import 'package:dantol_market_app/app.dart';
import 'package:dantol_market_app/common/controller/authentication_controller.dart';
import 'package:dantol_market_app/common/controller/bottom_nav_controller.dart';
import 'package:dantol_market_app/common/controller/data_load_controller.dart';
import 'package:dantol_market_app/product/repository/product_repository.dart';
import 'package:dantol_market_app/product/write/controller/product_write_controller.dart';
import 'package:dantol_market_app/product/write/page/product_write_page.dart';
import 'package:dantol_market_app/root.dart';
import 'package:dantol_market_app/splash/controller/login__controller.dart';
import 'package:dantol_market_app/splash/controller/splash_controller.dart';
import 'package:dantol_market_app/user/login/page/login_page.dart';
import 'package:dantol_market_app/user/model/user_model.dart';
import 'package:dantol_market_app/user/repository/authentication_repository.dart';
import 'package:dantol_market_app/user/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '당근마켓 클론코딩',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: const AppBarTheme( 
          elevation: 0,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 249, 203, 150),
      ),
      initialBinding: BindingsBuilder((){
        var authenticationRepository = AuthenticationRepository();
        var userRepository = UserRepository();
        var productRepository = ProductRepository();
        Get.put(authenticationRepository);
        Get.put(userRepository);
        Get.put(productRepository);
        Get.put(BottomNavController());
        Get.put(SplashController());
        Get.put(DataLoadController());
        Get.put(AuthenticationController());
      }),
      getPages: [
        GetPage(name: '/', page: () => const App()),
        GetPage(name:'/home',page:() => const Root()),
        GetPage(name:'/login',page:() => const LoginPage(),
        binding: BindingsBuilder((){
          Get.lazyPut<LoginController>(() => LoginController());
        })),
        GetPage(
          name:'/product/write',
          page:() => ProductWritePage(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => ProductWriteController(
              Get.find<AuthenticationController>().userModel.value ?? 
                const UserModel(uid: 'temp_user', name: '임시 사용자'),
              Get.find<ProductRepository>(),
            ));
          }),
        ),
      ],
    );
  }
}