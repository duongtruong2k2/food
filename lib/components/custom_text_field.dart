import 'package:flutter/material.dart';
import 'package:food/resources/color.dart';

class CusttomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final double radius;
  const CusttomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.icon,
    this.obscureText = false,
     this.radius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColor.black ,width: 1.2),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.86)),
            prefixIcon: icon == null ? null : Icon(icon,color: Colors.green,),
            prefixIconConstraints: const BoxConstraints(minWidth: 26.0),
          ),
        ),
      ),
    );
  }
}
