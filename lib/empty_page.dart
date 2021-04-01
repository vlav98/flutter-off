import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yuka/app_icons.dart';
import 'package:yuka/fiche_page.dart';
import 'package:yuka/res/app_colors.dart';
import 'package:yuka/res/app_vectorial_images.dart';

class EmptyPage extends StatelessWidget {
  void _openFichePage(BuildContext context, String productname) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
          builder: (BuildContext context) => FichePage(product: productname)),
    );
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
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: FittedBox(
                child: Icon(
                  AppIcons.barcode,
                  size: 50.0,
                ),
              ),
              onPressed: () {
                _openFichePage(context, 'Pancake aux fruits');
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(AppVectorialImages.illEmpty),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Vous n'avez pas encore scanné de produit."),
            ),
            TextButton.icon(
              label: Padding(
                  padding: EdgeInsets.all(10), child: Text('Commencer')),
              icon: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.arrow_right_alt),
              ),
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
    );
  }
}
