import 'package:flutter/material.dart';

Widget buildNavItem(int index, IconData icon, VoidCallback onTapCallback) {
  return InkWell(
    onTap: onTapCallback,
    child: Container(
      padding: EdgeInsets.all(10.0),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
  );
}
