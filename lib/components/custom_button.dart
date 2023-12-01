import 'package:flutter/material.dart';
import 'package:food/resources/color.dart';

class CusttomButton extends StatelessWidget {
  final VoidCallback? onPressed;

  final String text;

  final Color colortext;
  final Color? color;
  final double radius;
  const CusttomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.colortext = Colors.white,
    this.radius = 5, this.color, 
  
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
       
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: AppColor.greenBold,
          border: Border.all(color: AppColor.black, width: 1.2),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(
          text,
          style: TextStyle(color: colortext),
        ),
      
      ),
    );
  }
}
