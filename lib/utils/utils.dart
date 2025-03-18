import 'dart:ui';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
    );
  }

  static flushBarErrorMessage(String message, BuildContext context,bool isError) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          messageColor: Colors.black,
          backgroundColor:isError? Colors.red.shade600.withOpacity(0.4):Colors.green.shade600.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          padding: const EdgeInsets.all(15),
         icon: Icon(isError?Icons.error:Icons.verified,color: isError? Colors.red.shade900:Colors.green.shade900,),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          duration: const Duration(seconds: 5),
        )..show(context));
  }
}
