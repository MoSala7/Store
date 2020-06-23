import 'package:flutter/material.dart';

class StyleCustom {
  Color bg = Color(0xffffffff);
  Color red = Color(0xff0eaf00);
  Color green = Color(0xffda1f3e);

  static int signedIn = 0;
  signedOrNot(int x) {
    if (x == 0) {
      signedIn = 0;
    } else if (x == 1) {
      signedIn = 1;
    }
  }

  checkNow() {
    return signedIn;
  }
}
