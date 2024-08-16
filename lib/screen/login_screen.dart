// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:vrutant_login/screen/home_screen.dart';
// import 'package:vrutant_login/screen/regist_screen.dart';
// class LoginScreen extends StatelessWidget{
//   LoginScreen ({super.key});
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset("assets/images/4607360_28036.jpg",
//                 height: 300,
//               ),
//               SizedBox(height: 30,),
//               Text("Login Here",
//                 style: TextStyle(
//                   color: Colors.green,
//                   fontSize: 35,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Padding(
//                 padding: EdgeInsets.all(30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Username",
//                       style: TextStyle(color: Colors.black, fontSize: 12),),
//                     TextFormField(
//                       controller: username,
//                       decoration: InputDecoration(
//                           prefix: Icon(Icons.cruelty_free,color: Colors.red,),
//                           suffix: Icon(Icons.person,color: Colors.red,),
//                           hintText: "Username",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           )
//                       ),
//                     ),
//                     SizedBox(height: 30,),
//                     Text("password",
//                       style: TextStyle(color: Colors.black, fontSize: 12),),
//                     TextFormField(
//                       obscureText: true,
//                       controller: password,
//                       decoration: InputDecoration(
//                           prefix: Icon(Icons.password,color: Colors.red,),
//                           suffix: Icon(Icons.subject,color: Colors.red,),
//                           hintText: "password",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           )
//                       ),
//                     ),
//                     SizedBox(height: 30,),
//                     SizedBox(
//                       height: 60,
//                       width: 1000,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             )
//                         ),
//                         onPressed: () {
//                           if(username.text.isEmpty){
//                             toast("Please Enter Username");
//                           }else if(password.text.isEmpty){
//                             toast("Please Enter password");
//                           }else{
//                             Navigator.push(context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>   HomeScreen()
//                                 )
//                             );
//                           }
//                           //Navigator.push(
//                           //context,
//                           //MaterialPageRoute(
//                           // builder: (context) => HomeScreen()
//                           //)
//                           //);
//                         },
//                         child: Text(
//                           'Login',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 30
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 60,
//                       width: 1000,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.red,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             )
//                         ),
//                         onPressed: () {
//
//                             Navigator.push(context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>   RegisterScreen()
//                                 )
//                             );
//
//                           //Navigator.push(
//                           //context,
//                           //MaterialPageRoute(
//                           // builder: (context) => HomeScreen()
//                           //)
//                           //);
//                         },
//                         child: Text(
//                           'Register',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 30
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void toast(String msg){
//     Fluttertoast.showToast(
//         msg: "${msg}",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
//   }
// }
