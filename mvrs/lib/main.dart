import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mvrs/auth-screens/forgot_password_screen.dart';
import 'package:mvrs/auth-screens/forgot_password_verification_screen.dart';
import 'package:mvrs/auth-screens/host/host_signup_screen.dart';
import 'package:mvrs/auth-screens/login_screen.dart';
import 'package:mvrs/auth-screens/reset_password_screen.dart';
import 'package:mvrs/auth-screens/user/user_signup_screen.dart';
import 'package:mvrs/firebase_options.dart';
import 'package:mvrs/screens/app_splash_screen.dart';
import 'package:mvrs/screens/bottom_navigation_screens/feedback_screens/user_feedback_form_screen.dart';
import 'package:mvrs/screens/dashboard_screen.dart';
import 'package:mvrs/screens/discover_search_result_screen.dart';
import 'package:mvrs/screens/ride_summary_screen.dart';
import 'package:mvrs/screens/vehicle_detail_view_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MVRS - We offer rentals!",
      scaffoldMessengerKey: _scaffoldMessengerKey,
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => DashboardScreen(),
        "/app-splash": (context) => AppSplashScreen(),
        "/signin": (context) => LoginScreen(),
        "/user-signup": (context) => UserSignUpScreen(),
        "/host-signup": (context) => HostSignUpScreen(),
        "/forget-password": (context) => ForgetPasswordScreen(),
        "/forget-password-verification": (context) =>
            ForgotPasswordVerificationScreen(),
        "/reset-password": (context) => ResetPasswordScreen(),
        "/feedback-form": (context) => UserFeedbackFormScreen(),
      },
    );
  }
}
