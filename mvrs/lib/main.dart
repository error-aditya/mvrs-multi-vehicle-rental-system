import 'package:flutter/material.dart';
import 'package:mvrs/auth-screens/forgot_password_page.dart';
import 'package:mvrs/auth-screens/forgot_password_verification_page.dart';
import 'package:mvrs/auth-screens/host/host_signup_page.dart';
import 'package:mvrs/auth-screens/login_page.dart';
import 'package:mvrs/auth-screens/reset_password_page.dart';
import 'package:mvrs/auth-screens/user/user_signup_page.dart';
import 'package:mvrs/screens/dashboard.dart';
import 'package:mvrs/screens/history.dart';
import 'package:mvrs/screens/profile.dart';
import 'package:mvrs/screens/vehicles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MVRS",
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/dashboard",
      routes: {
        "/": (context) => LoginPage(),
        "/user-signup": (context) => UserSignUpPage(),
        "/host-signup": (context) => HostSignUpPage(),
        "/forget-password": (context) => ForgetPasswordPage(),
        "/forget-password-verification": (context) =>
            ForgotPasswordVerificationPage(),
        "/reset-password": (context) => ResetPasswordPage(),
        "/dashboard": (context) => Dashboard(),
        "/profile": (context) => Profile(),
        "/vehicles": (context) => Vehicles(),
        "/history": (context) => History(),
      },
    );
  }
}
