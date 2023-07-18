import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  AppField({
    super.key,
    required this.controller,
    required this.hintName,
    this.isMaxLine = false,
  });

  TextEditingController? controller;
  String? hintName;
  bool? isMaxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 3.0,
            spreadRadius: 0.0,
            offset: Offset(
              0.0,
              2.0,
            ),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        maxLines: isMaxLine == true ? 7 : 1,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          hintText: hintName,
        ),
      ),
    );
  }
}
