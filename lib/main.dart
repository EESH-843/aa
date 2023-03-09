import 'package:flutter/material.dart';
import 'package:login/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'login_page.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSigninProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          // ignore: prefer_const_constructors
          home: LoginPage(),
        ),
      );
}
