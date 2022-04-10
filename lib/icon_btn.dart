import 'package:flutter/material.dart';

class IconB extends StatelessWidget {
  final IconData icon ;
  final String text ;
  final Color color;
  final Color bgColor;
  final Function btnOnclick;

  const IconB({Key? key,  required this.icon, required this.color,required this.btnOnclick,required this.text, required this.bgColor}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
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
      margin: EdgeInsets.symmetric(horizontal: (width-5)/(3*10)),

      width: (width)/6,
      height: width/6,

      child: ElevatedButton(
    
          onPressed: (){
            btnOnclick(text);
          },


          child:Icon(icon,color: color,size: 28) ,
          style: TextButton.styleFrom(
          
              backgroundColor:bgColor,
              textStyle: TextStyle(color: color,fontWeight: FontWeight.w800),
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(16.0),
              )
        
          )
      ),
    );
  }
}
