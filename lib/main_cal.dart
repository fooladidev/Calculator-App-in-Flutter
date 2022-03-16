import 'package:calculator/icon_btn.dart';
import 'package:calculator/num.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_btn_large.dart';

class MainCal extends StatelessWidget {
  final Function btnOnclick ;
  const MainCal({Key? key,required this.btnOnclick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              Num(text: "AC", color: Colors.red,btnOnClick: btnOnclick,),
              Num(text: "C", color: Colors.red,btnOnClick: btnOnclick,),
              IconB(icon: CupertinoIcons.delete_left, color: Colors.black87,btnOnclick: btnOnclick,text: "remove",),
              IconB(icon: CupertinoIcons.divide, color: Colors.black87,btnOnclick: btnOnclick,text: "divide"),
            ],
          ),
          Row(
            children: [
              Num(text: "7", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "8", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "9", color: Colors.black87,btnOnClick: btnOnclick),
              IconB(icon: CupertinoIcons.multiply, color: Colors.black87,btnOnclick: btnOnclick,text: "multiply"),
            ],
          ),
          Row(
            children:  [
              Num(text: "4", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "5", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "6", color: Colors.black87,btnOnClick: btnOnclick),
              IconB(icon: CupertinoIcons.minus, color: Colors.black87,btnOnclick: btnOnclick,text: "sub"),
            ],
          ),
          Row(
            children:  [
              Num(text: "1", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "2", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: "3", color: Colors.black87,btnOnClick: btnOnclick),
              IconB(icon: CupertinoIcons.add, color: Colors.black87,btnOnclick: btnOnclick,text: "add"),
            ],
          ),
          Row(
            children:  [
              Num(text: "0", color: Colors.black87,btnOnClick: btnOnclick),
              Num(text: ".", color: Colors.black87,btnOnClick: btnOnclick),
              IconBLarge(icon: CupertinoIcons.equal, color: Colors.black87,btnOnclick: btnOnclick,text: "equal",),
            ],
          ),
        ],
      ),
    );
  }
}
