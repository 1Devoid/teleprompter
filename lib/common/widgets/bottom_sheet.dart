import 'package:flutter/material.dart';

class BottomSheetModal extends StatelessWidget{
  const BottomSheetModal({
    super.key,
    required this.children,
    this.height,
  });

  final Widget? children;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: children,
    );
  }
}