import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:yuka/res/app_colors.dart';
import 'package:yuka/res/app_vectorial_images.dart';
import 'package:yuka/res/resources.dart';

import 'app_icons.dart';
import 'fiche_page.dart';

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
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _FichePageState createState() => _FichePageState();
  //_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // var Uri url = Uri.parse('https://example.com/whatsit/create');
  // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');

  // print(await http.read('https://example.com/foobar.txt'));

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Mes scans'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: FittedBox(
              child: Icon(
                AppIcons.barcode,
                size: 50.0,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(AppVectorialImages.appLogo),
            Text("Vous n'avez pas encore scanné de produit."),
            TextButton.icon(
              label: Padding(
                  padding: EdgeInsets.all(10), child: Text('Commencer')),
              icon: Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(
                primary: AppColors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0))),
                backgroundColor: AppColors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _FichePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Header(),
          Bandeau(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
