import 'package:flutter/material.dart';

class TestSscreen2 extends StatelessWidget {
  const TestSscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text("Create Your Account"),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: "UserName",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(onPressed: () {},
                  child: Text("Sign in"),
                style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text("Or"),
              ),
              SizedBox(height: 16),
              OutlinedButton.icon(onPressed: () {},
                  icon: Icon(Icons.login),
                  label: Text("Login with Google"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity,50),
                  ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed: (){Navigator.pop(context);},child: Text("Login"),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
