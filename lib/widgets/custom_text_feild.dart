import 'package:flutter/material.dart';
import 'package:profiledashboard_task/helpers/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final String? Function(String?)? custom_validator; 
// وممكن يكون فاضي لهيك حطيت ؟ string قلتلو رح تستقبل فنكشن من نوع  
  
  final TextInputType input_type;
  
  const CustomTextFeild({
    super.key,
    required this.hint,
    required this.icon,
    this.input_type = TextInputType.text,

    this.isPassword = false,
    this.custom_validator,//constructor حطيتو داخل ال 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: input_type,
      validator: custom_validator,
      //هون رح يتم استدعاءه ورح ياخذ المتطلبات تاعت كل حقل لما استدعيه
    
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppConstants.primaryColor),
          // AppConstants.primaryColorvzx
        ),
        filled: true,

        fillColor: Colors.white,
        suffixIconColor: Colors.black,
        suffixIcon: Icon(icon),
      ),
    );
  }
}
