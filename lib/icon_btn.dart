import 'package:flutter/material.dart';

class IconB extends StatelessWidget {
  final IconData icon ;
  final String text ;
  final Color color;
  final Function btnOnclick;

  const IconB({Key? key,  required this.icon, required this.color,required this.btnOnclick,required this.text}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(

      width: (width-18)/4,
      height: width/5.5,

      child: OutlinedButton(
          onPressed: (){
            btnOnclick(text);

          },

          child:Icon(icon,color: color,) ,
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
