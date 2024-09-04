import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var register = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Register Here",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",
                          style: TextStyle(color: Colors.black, fontSize: 12),),
                        TextFormField(
                          controller: register.nameCTC,
                          decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                        ),
                        Text("Surname Name",
                          style: TextStyle(color: Colors.black, fontSize: 12),),
                        TextFormField(
                          controller: register.sNameCTC,
                          decoration: InputDecoration(
                              hintText: "Surname Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text("Email",
                          style: TextStyle(color: Colors.black, fontSize: 12),),
                        TextFormField(
                          controller: register.emailCTC,
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                        ),
                        SizedBox(height: 30,),

                        Text("password",
                          style: TextStyle(color: Colors.black, fontSize: 12),),
                        TextFormField(
                          obscureText: true,
                          controller: register.passCTC,
                          decoration: InputDecoration(
                              hintText: "password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        Obx(() => register.isLoading.value?CircularProgressIndicator():
                        InkWell(
                          onTap: (){
                            register.registerCont();

                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: Get.height*0.05,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Text("Submit",style: TextStyle(color: Colors.white),),
                          ),
                        )
                        )
                      ],
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
