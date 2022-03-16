import 'package:flutter/material.dart';
class Cons extends StatelessWidget {
  const Cons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;

    return Container(
      child: Text(width.toString() + "--" + height.toString()+"--" + newheight.toString(),style: TextStyle(fontSize: 12), ),
    );
  }
}
