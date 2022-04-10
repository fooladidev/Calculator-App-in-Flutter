import 'package:calculator/icon_btn.dart';
import 'package:calculator/num.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_btn_large.dart';

class MainCal extends StatelessWidget {
  final Function btnOnclick ;
  final Color opColor ;
  final Color numColor ;
  final Color btnBgColor ;

  const MainCal({Key? key,required this.btnOnclick, required this.opColor, required this.numColor, required this.btnBgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: width/30, ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Num(text: "AC", color: opColor,btnOnClick: btnOnclick,bgColor: btnBgColor,),
                Num(text: "C", color: opColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                IconB( icon: CupertinoIcons.delete_left,color: opColor,btnOnclick: btnOnclick,text: "remove",bgColor: btnBgColor),
                IconB(icon:CupertinoIcons.divide , color: opColor,btnOnclick: btnOnclick,text: "divide",bgColor: btnBgColor),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Num(text: "7", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "8", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "9", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                IconB(icon:CupertinoIcons.multiply , color: opColor,btnOnclick: btnOnclick,text: "multiply",bgColor: btnBgColor),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children:  [
                Num(text: "4", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "5", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "6", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                IconB(icon: CupertinoIcons.minus, color: opColor,btnOnclick: btnOnclick,text: "sub",bgColor: btnBgColor),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children:  [
                Num(text: "1", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "2", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: "3", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                IconB(icon: CupertinoIcons.add, color: opColor,btnOnclick: btnOnclick,text: "add",bgColor: btnBgColor),
              ],
            ),
          ),
          Container(

            child: Row(
              children:  [
                Num(text: "0", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                Num(text: ".", color: numColor,btnOnClick: btnOnclick,bgColor: btnBgColor),
                IconBLarge(icon: CupertinoIcons.equal, color: Colors.white70,btnOnclick: btnOnclick,text: "equal",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
