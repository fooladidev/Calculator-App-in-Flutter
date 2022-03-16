import 'package:flutter/material.dart';

class Num extends StatelessWidget {
  final String text ;
  final Color color;
  final Function btnOnClick ;

  const Num({Key? key, required this.text, required this.color,required this.btnOnClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(

      width: (width-18)/4,
      height: width/5.5,

      child: OutlinedButton(
          onPressed: (){
            btnOnClick(text);
          },

          child:Text(text,style: TextStyle(color: color,fontSize: 20),),
          style: TextButton.styleFrom(
              backgroundColor:const Color(0xFFEFEDED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )
          )
      ),
    );
  }
}
