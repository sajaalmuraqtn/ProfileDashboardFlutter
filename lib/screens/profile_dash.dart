import 'package:profiledashboard_task/helpers/constants.dart';
import 'package:profiledashboard_task/widgets/feedback_widget.dart';
import 'package:profiledashboard_task/widgets/house_widget.dart';
import 'package:profiledashboard_task/widgets/section_widget.dart';
import 'package:profiledashboard_task/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class ProfileDash extends StatelessWidget {
  List<String> servicesName = [
    'electrical',
    'educational',
    'plumbing',
    'painting',
  ];
  ProfileDash({super.key});

  @override
  Widget build(BuildContext context) {

    String email =ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // هنا أنشأنا زر عائم (FloatingActionButton) يظهر فوق الواجهة
        // عادةً بيكون أسفل يمين الشاشة في تطبيقات الموبايل
        onPressed: () {
          Navigator.of(context).canPop();
          // هذا الكود بينفذ لما المستخدم يضغط على الزر
          // Navigator.of(context).canPop() → بيرجع true أو false
          // معناه: هل في صفحة سابقة ممكن أرجع إلها (pop) من الـ stack؟
          // ملاحظة: هنا استعملناه فقط للفحص، لكن ما عملنا أي رجوع حقيقي
        },

        child: Icon(Icons.help),
        // هذا الأيقونة اللي بتظهر جوة الزر العائم (شكل علامة الاستفهام "help")
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Profile',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () => showMessgae(context, "Hello Saja!"),
            child: Image.asset('icons/Menu.png', height: 20, width: 20),
          ),
          SizedBox(width: 10),

          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello $email'),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppConstants.light_primary_color,
                        width: 10,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      child: Image.asset(
                        'assets/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Adewale Taiwo', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 8),
                      Text(
                        'House Manager',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConstants.primaryColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,

                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: AppConstants.light_primary_color,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        spacing: 10,
                        children: [
                          Text(
                            'Wallet Balance:',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '\$5046.57',
                            style: AppConstants.primary_numbers_text_style,
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Total Service',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '24',
                            style: AppConstants.primary_numbers_text_style,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,

                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: AppConstants.primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        spacing: 20,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Master Card',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Text(
                            '5999-XXXX',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Adewale T.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SectionWidget(title: 'Houses'),

              SizedBox(height: AppConstants.height),
              SingleChildScrollView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(right: 20),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.grey,
                      elevation: 5,

                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: AppConstants.primaryColor,
                              child: AppConstants.addIcon,
                            ),

                            Text(
                              'Add\nWorker',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    HouseWidget(house_name: 'Tobi Lateef'),
                    HouseWidget(house_name: 'Queen Needle'),
                    HouseWidget(house_name: 'Joan Blessing'),
                  ],
                ),
              ),
              SizedBox(height: AppConstants.height),

              SectionWidget(title: 'Services'),

              SizedBox(height: AppConstants.height),

              Column(
                spacing: 14,
                children: [
                  ServiceWidget(
                    icon: 'electrical.png',
                    title: 'Electrical',
                    description: 'Description',
                  ),
                  ServiceWidget(
                    icon: 'helmet.png',
                    title: 'Education',
                    description: 'lorem 123',
                  ),

                  ServiceWidget(
                    icon: 'electrical.png',
                    title: 'Others',
                    description: 'Description',
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height),

              SectionWidget(title: 'Feedback'),
              SizedBox(height: AppConstants.height),
              Column(
                spacing: 20,
                children: [
                  FeedbackWidget(
                    background_img: NetworkImage(
                      'https://mici.com/wp-content/uploads/2021/07/Manual-workers-talking-with-an-architect-while-going-through-housing-plans-cm-2.jpg',
                    ),
                    feedback_text: 'Perfect Work through all June month',
                    profile_img: 'avatar.png',
                  ),
                  FeedbackWidget(
                    background_img: NetworkImage(
                      'https://mici.com/wp-content/uploads/2021/07/Manual-workers-talking-with-an-architect-while-going-through-housing-plans-cm-2.jpg',
                    ),
                    feedback_text: 'Perfect Work through all June month',
                    profile_img: 'avatar.png',
                  ),
                  SizedBox(height: 20),
                ],
              ),

              SizedBox(height: AppConstants.height),
            ],
          ),
        ),
      ),
    );
  }
}
