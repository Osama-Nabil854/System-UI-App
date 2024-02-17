import 'package:flutter/material.dart';

extension NavigateToPage on BuildContext {
  void pushName(String page) {
    Navigator.pushNamed(this, page);
  }

  void pop() {
    Navigator.pop(this);
  }

  void pushNamedAndRemove(String page) {
    Navigator.pushNamedAndRemoveUntil(this, page, (route) => false);
  }
}
