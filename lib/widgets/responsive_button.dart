import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width=120, this.isResponsive=false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigoAccent
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin:EdgeInsets.only(left: 20),child: const Text('Book Trip Now', style: TextStyle(color: Colors.white, fontSize: 14),)):Container(),
            Image.asset("assets/images/arrow-btn.png"),
          ],
        ),
      ),
    );
  }
}
