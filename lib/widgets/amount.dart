import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  final String amountValue;
  Amount({@required this.amountValue});

  static const _backgroundColorBlack = Color(0xff272727); 
  static const _textColorGreenish = Color(0xff14a7c6);
  static const _textColorYelloish = Color(0xffffe400);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          amountValue,
          style: TextStyle(
            color: _textColorYelloish,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: _backgroundColorBlack,
          border: Border.all(
            width: 2,
            color: _backgroundColorBlack,
          ),
        ),
        padding: EdgeInsets.all(15));
  }
}
