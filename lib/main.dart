import 'package:profiledashboard_task/helpers/routes.dart';
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
        AppRoutes.signup:(context)=>SignUp(),
        AppRoutes.login:(context)=>LoginScreen(),
      } ,
      ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
//           actionsPadding: EdgeInsets.only(
//             right: 20,
//           ), 
//           actions: [
//             Image(image: AssetImage('icons/Menu.png'), height: 20, width: 20),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(14.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,

//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 70,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           width: 4,
//                           color: Color.fromRGBO(253, 237, 235, 1),
//                         ),
//                         image: DecorationImage(
//                           image: AssetImage("assets/avatar.png"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 15),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Adewale Taiwo",
//                           style: TextStyle(
//                             fontSize: 23,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         SizedBox(height: 8),

//                         Text(
//                           "House Manager",
//                           style: TextStyle(color: Colors.red, fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         height: 200,
//                         margin: EdgeInsets.symmetric(horizontal: 10),
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.red.shade50,
//                           borderRadius: BorderRadius.circular(16),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black12,
//                               spreadRadius: 2,
//                               blurRadius: 6,
//                               offset: Offset(0, 3),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "Wallet Balance:",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "\$5046.57",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.red,
//                               ),
//                             ),
//                             SizedBox(height: 16),
//                             Text(
//                               "Total Service",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "24",
//                               style: TextStyle(
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     Expanded(
//                       child: Container(
//                         height: 200,
//                         margin: EdgeInsets.symmetric(horizontal: 10),

//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(16),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black12,
//                               spreadRadius: 2,
//                               blurRadius: 8,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,

//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "Master Card",
//                                   style: TextStyle(color: Colors.white),
//                                   textAlign: TextAlign.left,
//                                 ),
//                               ],
//                             ),

//                             SizedBox(height: 16),
//                             Text(
//                               "5999-XXXX",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 fontSize: 16,
//                               ),
//                             ),
//                             SizedBox(height: 25),
//                             Text(
//                               "Adewale T.",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25),

//                 // Houses
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Houses",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "All",
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,

//                   children: [
//                     SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(13),
//                           width: 83,
//                           height: 125,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black12,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleAvatar(
//                                 radius: 20,
//                                 child: Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                   size: 15,
//                                 ),
//                                 backgroundColor: Colors.redAccent,
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 "Add\nWorkers",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(13),
//                           width: 83,
//                           height: 125,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black12,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: AssetImage(
//                                   "assets/avatar.png",
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 "Tobi\nLateef",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(13),
//                           width: 83,
//                           height: 125,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black12,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: AssetImage(
//                                   "assets/avatar.png",
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 "Queen\nNeedle",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(13),
//                           width: 83,
//                           height: 125,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black12,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: AssetImage(
//                                   "assets/avatar.png",
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 "Joan\nBlessing",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25),

//                 // Services
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Services",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text("All", style: TextStyle(color: Colors.red)),
//                   ],
//                 ),

//                 SizedBox(height: 30),

//                 Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 8,
//                         vertical: 14,
//                       ),
//                       margin: EdgeInsets.only(right: 20),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 5,
//                             offset: Offset(0, 3),
//                           ),
//                         ],
//                       ),
//                       child: ListTile(
//                         leading: Image(
//                           image: AssetImage("assets/electrical.png"),
//                         ),
//                         title: Text(
//                           "Electrical",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text(
//                           "Description",
//                           style: TextStyle(color: Colors.grey),
//                         ),

//                         trailing: Icon(Icons.arrow_forward, size: 30),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 8,
//                         vertical: 14,
//                       ),
//                       margin: EdgeInsets.only(right: 20),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 5,
//                             offset: Offset(0, 3),
//                           ),
//                         ],
//                       ),
//                       child: ListTile(
//                         leading: Image(image: AssetImage("assets/helmet.png")),
//                         title: Text(
//                           "Others",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text(
//                           "Description",
//                           style: TextStyle(color: Colors.grey),
//                         ),

//                         trailing: Icon(Icons.arrow_forward, size: 30),
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 25),

//                 // Feedbacks
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Feedbacks",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "All",
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25),

//                 Row(
//                   children: [
//                     Stack(
//                       clipBehavior: Clip.none,
//                       alignment: AlignmentDirectional.centerEnd,
//                       children: [
//                         Container(
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                               image: AssetImage('assets/kitchen.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 110,
//                           child: Container(
//                             padding: EdgeInsets.symmetric(
//                               vertical: 10,
//                               horizontal: 20,
//                             ),
//                             width: 280,
//                             height: 100,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color.fromARGB(
//                                     231,
//                                     158,
//                                     158,
//                                     158,
//                                   ),
//                                   offset: Offset(0, 3),
//                                   blurRadius: 6,
//                                 ),
//                               ],
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               spacing: 12,
//                               children: [
//                                 Container(
//                                   width: 50,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                       width: 4,
//                                       color: Color.fromRGBO(253, 237, 235, 1),
//                                     ),
//                                     image: DecorationImage(
//                                       image: AssetImage("assets/avatar.png"),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     'Perfect Work through all June month',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25),

//                 Row(
//                   children: [
//                     Stack(
//                       clipBehavior: Clip.none,
//                       alignment: AlignmentDirectional.centerEnd,
//                       children: [
//                         Container(
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                               image: AssetImage('assets/chif.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 110,
//                           child: Container(
//                             padding: EdgeInsets.symmetric(
//                               vertical: 10,
//                               horizontal: 20,
//                             ),
//                             width: 280,
//                             height: 100,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color.fromARGB(
//                                     231,
//                                     158,
//                                     158,
//                                     158,
//                                   ),
//                                   offset: Offset(0, 3),
//                                   blurRadius: 6,
//                                 ),
//                               ],
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               spacing: 12,
//                               children: [
//                                 Container(
//                                   width: 50,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                       width: 4,
//                                       color: Color.fromRGBO(253, 237, 235, 1),
//                                     ),
//                                     image: DecorationImage(
//                                       image: AssetImage("assets/avatar.png"),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     'Perfect Work through all June month',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
