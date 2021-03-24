import 'package:flutter/material.dart';
import 'package:yuka/res/app_colors.dart';
import 'package:yuka/res/app_images.dart';
import 'package:yuka/res/app_vectorial_images.dart';
import 'package:yuka/res/resources.dart';

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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
      body: Column(children: [
        Header(),
        Body(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Text('test')],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    double screenWidth = query.size.width;
    double screenHeight = query.size.height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          AppImages.pancakes,
          width: screenWidth,
        ),
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pancakes',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Grand mère Danette',
                  style: TextStyle(
                    color: AppColors.gray3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Product {
  final String barcode;
  final String? name;
  final String? altName;
  final String? picture;
  final String? quantity;
  final List<String>? brands;
  final List<String>? manufacturingCountries;
  final List<String>? ingredients;
  final List<String>? traces;
  final List<String>? allergens;
  final Map<String, String>? additives;
  final bool? ingredientsFromPalmOil;

  Product(
      {required this.barcode,
      this.name,
      this.altName,
      this.picture,
      this.quantity,
      this.brands,
      this.manufacturingCountries,
      this.ingredients,
      this.traces,
      this.allergens,
      this.additives,
      this.ingredientsFromPalmOil});
}
