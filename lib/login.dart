import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                suffixIcon: Icon(Icons.email)),
          ),
          TextField(
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password should be more than 6 character',
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
