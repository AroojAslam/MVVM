import 'package:flutter/material.dart';
import 'package:mvvm/utils/route/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

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
              Utils.flushBarErrorMessage('move to splash screen', context, true);
            },
            child: const Text('Go to splash screen',
              style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
          )
        ],
      ),
    );
  }
}
