import 'package:dantol_market_app/common/app_font.dart';
import 'package:dantol_market_app/common/controller/bottom_nav_controller.dart';
import 'package:dantol_market_app/home/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Root extends GetView<BottomNavController> {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: const [
          HomePage(),
          Center(child: AppFont('동네생활')),
          Center(child: AppFont('내 근처')),
          Center(child: AppFont('채팅')),
          Center(child: AppFont('나의 밤톨')),
        ]),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
          currentIndex: controller.menuIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff212123),
          selectedItemColor: const Color(0xffffffff),
          unselectedItemColor: const Color(0xff808080),
          selectedFontSize: 11,
          unselectedFontSize: 11,
          onTap: controller.changeBottomNav,
            items: const [
            BottomNavigationBarItem(
              label: '홈',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.home_outlined),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.home),
              ),
            ),
            BottomNavigationBarItem(
              label: '동네생활',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.article_outlined),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.article),
              ),
            ),
            BottomNavigationBarItem(
              label: '내 근처',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.location_on_outlined),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.location_on),
              ),
            ),
            BottomNavigationBarItem(
              label: '채팅',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.chat_bubble_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.chat_bubble),
              ),
            ),
            BottomNavigationBarItem(
              label: '나의 밤톨',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
            ),
          ],
        ),
      ),
    );
  }
}