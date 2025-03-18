import 'package:flutter/material.dart';
import 'package:mvvm/utils/route/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('splash screen'),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.login);
              //Utils.toastMessage('move to login screen');
              Utils.flushBarErrorMessage('move to login screen', context,false);
            },
            child: const Text('Go to login screen',
            style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
          )
        ],
      ),
    );
  }
}
