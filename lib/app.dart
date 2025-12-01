import 'package:flutter/material.dart';
import 'package:dantol_market_app/splash/init/init_start_page.dart';
import 'package:dantol_market_app/splash/page/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isInitStarted = true;
  bool isLoading = true;
  late SharedPreferences prefs;

  @override
  void initState(){
    super.initState();
    _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      isInitStarted = prefs.getBool('isInitStarted') ?? true;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isInitStarted ?InitStartPage(
      onStart: (){
        setState(() {
          isInitStarted = false;
        });
        prefs.setBool('isInitStarted', isInitStarted);
      }
    ) : const SplashPage();
  }
}