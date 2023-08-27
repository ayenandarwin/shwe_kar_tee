import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key,required this.aspectR,required this.eMessage}):super(key: key);
  final double aspectR;
  final Object eMessage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: aspectR,
    child: Container(
      child: Center(
        child: Text(eMessage.toString(),style: TextStyle(fontSize: 20),),
      ),
    ),);
  }
}
