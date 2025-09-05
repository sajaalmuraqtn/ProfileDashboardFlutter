import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:flutter/material.dart';
 
class HouseWidget extends StatelessWidget {
  String house_name;
  String? house_manager_icon_path;

  HouseWidget({super.key, 
    required this.house_name,
    this.house_manager_icon_path = AppConstants.defaultImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),

      width: 80,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 158, 158, 158),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffFDEDEB), width: 4),
              shape: BoxShape.circle,
            ), //profile.png
            child: Image.asset(
              'assets/$house_manager_icon_path',
              fit: BoxFit.cover,
            ),
          ),

          Text(
            house_name ,
            textAlign: TextAlign.center,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
               fontSize: 10,
               fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
