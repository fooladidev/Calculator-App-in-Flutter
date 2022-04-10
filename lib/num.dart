import 'package:flutter/material.dart';

class Num extends StatelessWidget {
  final String text ;
  final Color color;
  final Color bgColor;
  final Function btnOnClick ;

  const Num({Key? key, required this.text, required this.color,required this.btnOnClick, required this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: (width-5)/(3*10)),

      width: (width)/6,
      height: width/6,
      decoration:  BoxDecoration(
        boxShadow: [
          Theme.of(context).brightness==Brightness.dark ? BoxShadow(
            color: Colors.black26 ,
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(0,1)
          )
          : BoxShadow(
            color: Color.fromARGB(255, 219, 219, 219) ,
            blurRadius: 12,
            spreadRadius: 4,
            offset: Offset(0,2)
          ), 
      
           
        ],
      ),

      child: ElevatedButton(
          onPressed: (){
            btnOnClick(text);
          },

          child:Text(text,style: TextStyle(color: color,fontSize: 20),),
          style: TextButton.styleFrom(
              backgroundColor:bgColor,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(16.0),
              )
          )
      ),
    );
  }
}
