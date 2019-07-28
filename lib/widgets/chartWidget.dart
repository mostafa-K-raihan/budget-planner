import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Text("Chart"),
        
        elevation: 10,
      ),
    );
  }
}

