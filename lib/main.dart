import 'package:profiledashboard_task/helpers/routes.dart';
import 'package:profiledashboard_task/screens/houses.dart';
import 'package:profiledashboard_task/screens/login.dart';
import 'package:profiledashboard_task/screens/profile_dash.dart';
import 'package:profiledashboard_task/screens/services_screen.dart';
import 'package:profiledashboard_task/screens/sign_up.dart';
import 'package:profiledashboard_task/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.splash:(context)=>SplashScreen(),
        AppRoutes.dash:(context)=>ProfileDash(),
        AppRoutes.services:(context)=>ServicesScreen(),
        AppRoutes.houses:(context)=>HousesScreen(),
        AppRoutes.signup:(context)=>SignUp(),
        AppRoutes.login:(context)=>LoginScreen(),
      } ,
      ));
}
