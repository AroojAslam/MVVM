import 'package:flutter/material.dart';
import 'package:mvvm/utils/route/routes_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Center(
            child: Text('login screen'),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.splash);
            },
            child: const Text('Go to splash screen',
              style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
          )
        ],
      ),
    );
  }
}
