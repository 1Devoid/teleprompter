import 'package:flutter/material.dart';

class TextToolbarComponent extends StatelessWidget{
  const TextToolbarComponent({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(5.0),
          width: 70.0,
          height: 60.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}