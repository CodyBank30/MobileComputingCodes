import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vrutant_login/screen/home_screen.dart';
import 'test_sscreen2.dart';
class TestSscreen1 extends StatelessWidget {
  TestSscreen1({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text("Enter your Credentials for Login"),
              SizedBox(height: 32),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: "UserName",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 32),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(onPressed: () {
                if(username.text.isEmpty){
                  toast("Please Enter Username");
                }else if(password.text.isEmpty){
                  toast("Please Enter password");
                }else{
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>   HomeScreen()
                      )
                  );
                }
              },
                  child: Text("Login Now"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
              ),
              SizedBox(height: 16),
              TextButton(onPressed: () {},
                  child: Text("Forgot Password?"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any Account?"),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestSscreen2() )
                    );
                  },
                      child: Text("Sign In"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void toast(String msg){
    Fluttertoast.showToast(
        msg: "${msg}",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
