import 'package:calculator/main_cal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  final ThemeData _darkTheme = ThemeData(
    primaryColor: const Color(0xFF243441),colorScheme: ColorScheme.fromSwatch().copyWith(onSurface: Colors.white70,onSurfaceVariant: Color(0xFF76848F),onSecondary: const Color(0xFF707E89),secondary: const Color(0xFF253440),surfaceVariant: Color(0xFFDC8D50),brightness: Brightness.dark,
  ));
  
  final ThemeData _lightTheme = ThemeData(
      primaryColor: const Color(0XFFEBEBEB), colorScheme: ColorScheme.fromSwatch().copyWith(onSurface: Colors.black87,onSurfaceVariant: Color(0xFFB4B5B7),onSecondary: const Color(0xFFA6A7AB),surfaceVariant:const Color(0xFFA6A7AB) ,brightness: Brightness.light,secondary:Color(0xFFEFEDEE) )
      );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:_lightTheme,
      darkTheme: _darkTheme,
      themeMode: ThemeMode.system,
      
      home: MyHomePage(title: 'Calculator App'),
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
  String history = '';
  String textToDisplay = '';
  String result = '';
  String operation = '';


  void btnOnClick(String btnVal) {
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
    } else if (btnVal == 'remove') {
      if (textToDisplay.length > 0) {
        setState(() {
          result = textToDisplay.substring(0, textToDisplay.length - 1);
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
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        result = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum / secondNum).round().toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    var heightNav = MediaQuery.of(context).viewPadding.bottom;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          margin: EdgeInsets.only(top: height,bottom: heightNav+8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
      
              Column(
                children: [
                  
                  Container(
                    margin: EdgeInsets.only(right: 36, bottom: 24),
                    child: Text(
                      textToDisplay,
                      style: TextStyle(fontSize: 64, color:Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 36, bottom: 24),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      history,
                      style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ),
                ],
              ),
              MainCal(btnOnclick: btnOnClick,
              btnBgColor:Theme.of(context).colorScheme.secondary ,
              opColor: Theme.of(context).colorScheme.surfaceVariant,
              numColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
        ));
  }
}
