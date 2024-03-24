import 'package:flutter/material.dart';
import 'package:whatsapp_clone/page/home.dart';
import 'package:whatsapp_clone/page/chat.dart';
import 'package:whatsapp_clone/page/setting.dart';
import 'package:whatsapp_clone/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Color(0xFF075E55)),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => SplashScreen(),
        // "/": (context) => HomePage(),
        "settingsPage": (context) => SettingPage(),
        "chatPage": (context) {
          final Map<String, dynamic> arguments = ModalRoute.of(context)!
              .settings
              .arguments as Map<String, dynamic>;
          return ChatPage(
            selectedUser: arguments['selectedUser'],
            avatar: arguments['avatar'],
          );
        },
      },
    );
  }
}
