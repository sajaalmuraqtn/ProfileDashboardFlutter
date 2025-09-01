import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/screens/services_screen.dart';
import 'package:flutter/material.dart'; 

class SectionWidget extends StatelessWidget {
  String title;
  void Function()? on_Tap;
  SectionWidget({super.key, required this.title,this.on_Tap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: on_Tap,

          child: Text(
            'ALL',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
