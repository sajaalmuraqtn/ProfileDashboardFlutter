import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:profiledashboard_task/widgets/house_widget.dart';

class HousesScreen extends StatelessWidget {
  const HousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> houses =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
                backgroundColor: Colors.transparent,

        title: Text("Houses"),
        actions: [
          InkWell(
            onTap: () =>
                //  Navigator.popUntil(context, (route) => route.isFirst),
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                  (route) => false,
                ),
            child: Icon(Icons.logout, color: AppConstants.primaryColor),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemCount: houses.length,
        itemBuilder: (context, index) {
          return HouseWidget(
            house_name: houses.entries.elementAt(index).key,
            house_manager_icon_path: houses.entries.elementAt(index).value,
          );
        },
      ),
    );
  }
}
