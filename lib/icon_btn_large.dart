import 'package:flutter/material.dart';

class IconBLarge extends StatelessWidget {
  final IconData icon ;
  final String text ;
  final Function btnOnclick;

  final Color color;

  const IconBLarge({Key? key,  required this.icon, required this.color,required this.text,required this.btnOnclick}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: (width-5)/(3*10)),

      width: (2 * (width)/6)+(width/15),
      height: width/6,

      child: ElevatedButton(
          onPressed: (){
            btnOnclick(text);
          },

          child:Icon(icon,color: color,size: 28,) ,
          style: TextButton.styleFrom(
              backgroundColor:const Color(0xFFE87D2D),
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(16.0),
              )
  
          )
      ),
    );
  }
}
