import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:profiledashboard_task/widgets/service_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> servicesName =
        ModalRoute.of(context)?.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
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
      body: 
      ListView.separated(
  // نستخدم ListView.separated لعرض قائمة بعناصر وبين كل عنصر والثاني فاصل (separator)

  separatorBuilder: (context, index) {
    return Divider(); 
    // يرسم خط فاصل (Divider) بين كل عنصرين في القائمة
  },

  shrinkWrap: true,
  // بيخلي الـ ListView تاخذ فقط المساحة اللي تحتاجها (ما تتمدد لكل الشاشة)
  // مفيد إذا كانت القائمة داخل ScrollView أو Column

  itemCount: servicesName.length,
  // عدد العناصر المعروضة في القائمة = طول القائمة servicesName

  itemBuilder: (context, index) {
    // دالة تبني العنصر عند كل index من القائمة
    return Padding(
      padding: const EdgeInsets.all(10.0),
      // إضافة مسافة (Padding) حوالين كل عنصر من العناصر

      child: ServiceWidget(
        // Widget مخصص (عملناه نحن) لعرض تفاصيل الخدمة

        icon: 'electrical.png',
        // اسم صورة الأيقونة المعروضة لكل عنصر

        title: servicesName[index],
        // العنوان = اسم الخدمة (نجيبه من القائمة servicesName حسب index)

        description: 'lorem',
        // وصف ثابت تجريبي (placeholder) للخدمة
      ),
    );
  },
),
    );
  }
}
/*
Navigator
push , pop , pushReplacment , popUntil , pushAndRemoveUntil


Navigator 1.0 
Navigator 2.0
Recommended routing
*/