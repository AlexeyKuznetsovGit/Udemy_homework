import 'package:flutter/material.dart';

class ProjectButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  ProjectButton({required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
