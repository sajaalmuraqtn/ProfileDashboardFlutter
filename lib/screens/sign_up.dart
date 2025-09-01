import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/helpers/routes.dart';
import 'package:profiledashboard_task/screens/login.dart';
import 'package:profiledashboard_task/screens/profile_dash.dart';
import 'package:profiledashboard_task/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:profiledashboard_task/widgets/custom_text_feild.dart'; 

class SignUp extends StatelessWidget {
  SignUp({super.key});

  String? current_pass = "";
  //   عرفناها كـ متغير على مستوى الكلاس (class-level variable) مش جوة الـ validator.

  // السبب: بدنا نخزن فيه قيمة الباسورد الأصلية اللي دخلها المستخدم في حقل "Password".

  // بعدين نقدر نستخدمها داخل حقل "Confirm Password" عشان نقارن بين القيمتين.

  String? emailUser = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Welcom in Our App (Sign UP)',
                  style: AppConstants.primary_numbers_text_style,
                ),
                Text(
                  'sign Up to access your account',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 30),

                CustomTextFeild(
                  hint: 'userName',
                  icon: Icons.person,
                  input_type: TextInputType.name,
                  custom_validator: (username) {
                    if (username == null || username.isEmpty) {
                      return "Enter valid username";
                    }
                    if (username.length < 3) return "username must be > 3";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'age',
                  icon: Icons.elderly,
                  input_type: TextInputType.number,
                  custom_validator: (age) {
                    if (age == null || age.isEmpty) return "not valid age";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'Enter your phone',
                  icon: Icons.numbers,
                  input_type: TextInputType.phone,
                  custom_validator: (phone) {
                    if (phone == null || phone.isEmpty) {
                      return "not valid phone number";
                    }
                    if (!phone.startsWith('+')) return "Remebmer +";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'Enter your Email',
                  icon: Icons.email,
                  input_type: TextInputType.emailAddress,
                  custom_validator: (email) {
                    emailUser = email;
                    if (email == null || email.isEmpty) {
                      return "Enter valid email";
                    }
                    if (!email.contains('@')) return "Remebmer @";
                    if (!email.contains('.com')) return "Remebmer .com";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'password',
                  icon: Icons.lock_outline_rounded,
                  isPassword: true,
                  custom_validator: (password) {
                    current_pass = password;
                    //current_pass هون خزّنا قيمة الباسورد المدخلة في المتغير 
                    //confirm password عشان نقدر نستخدمها بعدين في حقل   

                    print('current password in password feild : $current_pass');
                    // لطباعة الباسورد الحالي (للتجربة فقط)

                    if (password == null || password.isEmpty) {
                      return "Enter valid password";
                      // إذا الحقل فاضي أو null → رجّع رسالة خطأ
                    }
                    if (password.length < 5) {
                      return "password more than 5 digits";
                      // إذا طول الباسورد أقل من 5 → خطأ
                    }
                    if (!password.contains(RegExp(r'[!@#$%^&*]'))) {
                      return 'should has special char.';
                      // إذا الباسورد ما يحتوي على أي رمز خاص → خطأ
                    }
                    return null;
                    // إذا كل الشروط صح → ما في خطأ
                  },
                ),

                CustomTextFeild(
                  hint: 'confirm password',
                  icon: Icons.lock_outline_rounded,
                  isPassword: true,
                  custom_validator: (confirmPass) {
                    print(
                      'current password in confirm-password field : $current_pass',
                    );
                    // هون عم نطبع الباسورد الأصلي عشان نتحقق منه

                    if (confirmPass == null || confirmPass.isEmpty) {
                      return "Enter valid password";
                      // إذا حقل التأكيد فاضي → خطأ
                    }
                    if (confirmPass != current_pass) {
                      return "must equal the passord";
                      // الشرط الأهم: إذا كلمة المرور المؤكدة لا تساوي كلمة المرور الأصلية
                      // → رجّع رسالة خطأ
                    }
                    return null;
                    // إذا كل الشروط صح → ما في خطأ
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _signUp(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity, 15),
                    backgroundColor: AppConstants.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Sign up', style: TextStyle(color: Colors.white)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('has an Account'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login
                        );
                      },
                      child: Text(' Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.reset();
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.dash,arguments: emailUser
       );
    }
  }
}
