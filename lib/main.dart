import 'package:calculator/main_cal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int firstNum;
  late int secondNum;
  String history='';
  String textToDisplay='';
  String result='';
  String operation='';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      result = "";
    
    } else if (btnVal == 'AC') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      result = "";
      history = "";
    }else if(btnVal=='remove' ){
      if(textToDisplay.length>0){
        setState(() {
        result=textToDisplay.substring(0,textToDisplay.length-1); 
      }); 
      }

    } else if (btnVal == 'add') {
      firstNum = int.parse(textToDisplay);
      result = "";
      operation = '+';

    } else if (btnVal == 'sub') {
      firstNum = int.parse(textToDisplay);
      result = "";
      operation = '-';

    } else if (btnVal == 'multiply') {
      firstNum = int.parse(textToDisplay);
      result = "";
      operation = 'x';
    } else if (btnVal == 'divide') {
      firstNum = int.parse(textToDisplay);
      result = "";
      operation = '/';

    } else if (btnVal == 'equal') {
      secondNum=int.parse(textToDisplay);
      if(operation =='+'){
        result=(firstNum+secondNum).toString();
        history = firstNum.toString()  + operation.toString() + secondNum.toString();
      }
      if(operation =='x'){
        result=(firstNum*secondNum).toString();
        history = firstNum.toString()  + operation.toString() + secondNum.toString();
      }
      if(operation =='-'){
        result=(firstNum-secondNum).toString();
        history = firstNum.toString()  + operation.toString() + secondNum.toString();
      }
      if(operation =='/'){
        result=(firstNum/secondNum).round().toString();
        history = firstNum.toString()  + operation.toString() + secondNum.toString();
      }
    }
    else {
      result=int.parse(textToDisplay+btnVal).toString();
    }
    setState(() {
      textToDisplay=result ;

    });
  }
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
        backgroundColor: const Color(0xFFEBEBEB),
        body: Container(
          margin: EdgeInsets.only(top: height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, bottom: 24),
                    child: Text(
                      textToDisplay,
                      style: TextStyle(fontSize: 56, color: Colors.black87),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8, bottom: 48),
                    padding: EdgeInsets.all(5),
                    child:  Text(
                      history,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ],
              ),
              MainCal(btnOnclick: btnOnClick),
            ],
          ),
        ));
  }
}
