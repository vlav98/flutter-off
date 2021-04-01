import 'package:flutter/material.dart';
import 'package:yuka/empty_page.dart';
// import 'package:http/http.dart' as http;
import 'package:yuka/res/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.blue,
        primaryColorDark: AppColors.blueDark,
        primaryColorLight: AppColors.blueLight,
        accentColor: AppColors.yellow,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              headline6: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                  )),
          backgroundColor: AppColors.white,
          actionsIconTheme: IconThemeData(color: AppColors.blue),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.gray3,
        ),
      ),
      home: EmptyPage(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key? key, this.title}) : super(key: key);
//  final String? title;

//@override
//_FichePageState createState() => _FichePageState();
//_MyHomePageState createState() => _MyHomePageState();
//}
