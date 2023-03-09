// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/api/google_signIn_api.dart';
import 'package:login/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 36, 36),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/thng.png'),
            SizedBox(height: 10),
            //Hello Again!
            Text(
              'Log in',
              style: GoogleFonts.play(
                textStyle: const TextStyle(fontSize: 44),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            Text(
              'to',
              style: GoogleFonts.play(
                textStyle: const TextStyle(fontSize: 24),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            Text(
              'find your way through the city',
              style: GoogleFonts.play(
                textStyle: const TextStyle(fontSize: 20),
                color: Colors.white,
              ),
            ),

            SizedBox(height: 70),

            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {
                final provider =
                    Provider.of<GoogleSigninProvider>(context, listen: false);
                provider.googleLogin();
              },
            ),
          ]),
        ),
      ),
    );
  }
  // ignore: dead_code
}

Future signIn() async {
  await GoogleSignInApi.login();
}
