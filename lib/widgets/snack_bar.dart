import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  String message;
  CustomSnackBar({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: Row(
        children: [
          Icon(Icons.notifications_active),
          SizedBox(
            width: 8.0,
          ),
          Text(message),
        ],
      ),
    );
  }
}
