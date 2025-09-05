import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/helpers/routes.dart';
import 'package:profiledashboard_task/screens/profile_dash.dart';
import 'package:profiledashboard_task/screens/sign_up.dart';
import 'package:profiledashboard_task/widgets/custom_text_feild.dart';
import 'package:profiledashboard_task/screens/profile_dash.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //Memorey leak
  String? emailUser = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:
            // form widget
            Form(
              key: _formKey, // global key form type
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcom in Our App (Login IN)',
                    style: AppConstants.primary_numbers_text_style,
                  ),
                  Text(
                    'sign in to access your account',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 40),

                  CustomTextFeild(
                    hint: 'Enter your Email',
                    icon: Icons.email,
                    input_type: TextInputType.emailAddress,
                    custom_validator: (email) {
                      emailUser = email;
                      if (email == null || email.isEmpty) {
                        // اذا ما كان الحقل فارغ او القيمة مش معرفة مثلا
                        return "Enter valid email";
                      }
                      if (!email.contains('@')) return "Remebmer @";
                      if (!email.contains('.com')) return "Remebmer .com";
                      return null; //رح يفهم انو كلشي تمام null اذا رجع
                    },
                  ),
                  CustomTextFeild(
                    hint: 'password',
                    icon: Icons.lock_outline_rounded,
                    isPassword: true,
                    custom_validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Enter valid password";
                      }
                      if (password.length < 5)
                        return "password more than 5 digits";
                      if (!password.contains(RegExp(r'[!@#$%^&*]'))) {
                        return 'should has special char.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () =>
                        _login(context), //نفذ هذا الفنكشن ورجع نتيجته
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 15),
                      backgroundColor: AppConstants.primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                    ),
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.signup,
                          );
                        },
                        child: Text(
                          ' Sign up',
                          style: TextStyle(color: AppConstants.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      ),
    );
  }

  _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // هون رح يتأكد اذا كلشي تمام لكل الحقول رح ينفذ الكود اللي جوا

      _formKey.currentState!.reset();
      //  جملة بستخدمها لحتى افرغ الحقول من القيم اللي فيها]

      Navigator.pushReplacementNamed(
        /* pushReplacement -> 
        استخدمتو لحتى بس اكبس على زر الرجوع ما يرجعني على صفحة تسجيل الدخول  */
        context,
        AppRoutes.dash,
        arguments: emailUser,
      );
    }
    //@
    // String emailData = emailCont.text;
    // String passData = passCont.text;

    // if (emailData.isEmpty || passData.isEmpty) {
    //   showMessgae(context, 'Enter valid data');
    //   emailCont.clear();
    //   passCont.clear();
    // } else if (!emailData.contains('@') || !emailData.contains('.com')) {
    //   // .com
    //   showMessgae(context, 'Enter valid email');
    // } else if (passData.length < 5 ||
    //     !passData.contains("*") ||
    //     !passData.contains("#")) {
    //   //spcial character
    //   // showMessgae(context, 'Enter valid password');
    //   passCont.clear();
    // } else {
    //   emailCont.clear();
    //   passCont.clear();
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) {
    //         return ProfileDash();
    //       },
    //     ),
    //   );
    // }
  }
}
