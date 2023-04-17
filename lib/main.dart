import 'package:flutter/material.dart';
import 'main_controller_screen.dart';
import 'theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeConfig.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeConfig.theme(),
        home: const MainControllerScreen(),
        debugShowCheckedModeBanner: false);
  }
}
