import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:flutter/material.dart';
 
class ServiceWidget extends StatelessWidget {
  String icon;
  String title;
  String description;

  ServiceWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 158, 158, 158),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: ListTile(
        onTap: () => showMessgae(context, "Go ahead "),
        leading: Image.asset('assets/$icon', width: 30, height: 30),
        trailing: Icon(Icons.arrow_forward, size: 20, color: Colors.black),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
