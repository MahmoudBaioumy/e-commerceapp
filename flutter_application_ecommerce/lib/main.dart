import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/fearures/auth/view/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyD2rZdCzxnVT-kO3NuDu1lr9LeEOJ6Ph38',
        appId: 'com.example.flutter_application_ecommerce',
        messagingSenderId: '479815059394',
        projectId: 'buy-it-6fc4d'),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: loginView());
  }
}
