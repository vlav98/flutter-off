import 'package:flutter/material.dart';
import 'package:yuka/global_widget/header_widget.dart';
import 'package:yuka/res/app_colors.dart';

class AttributesPage extends StatelessWidget {
  final String product;

  AttributesPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Caractéristiques'),
          centerTitle: false,
          iconTheme: IconThemeData(
            color: AppColors.blue,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(product: product),
              Attributes(),
            ],
          ),
        ));
  }
}

class Attributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: <Widget>[
        Title(
          libelle: 'Ingrédients',
        ),
        DataRow(libelle: 'Légumes', value: '0%'),
        DataRow(libelle: 'Eau', value: ''),
        DataRow(libelle: 'Sucre', value: ''),
        DataRow(libelle: 'Garniture (2.5%)', value: 'Myrtilles, framboises'),
        DataRow(libelle: 'Sel', value: ''),
        DataRow(libelle: 'Arômes naturels', value: ''),
        Title(
          libelle: 'Substances allergènes',
        ),
        EmptyData(),
        Title(
          libelle: 'Additifs',
        ),
        EmptyData(),
      ]),
    );
  }
}

class Title extends StatelessWidget {
  final String libelle;

  const Title({required this.libelle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        color: AppColors.gray1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              libelle,
              style:
                  TextStyle(color: AppColors.blue, fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}

class DataRow extends StatelessWidget {
  final String libelle;
  final String value;

  const DataRow({required this.libelle, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(15),
        child: Row(children: <Widget>[
          Text(
            libelle,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: AppColors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(value,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: AppColors.gray3),
                textAlign: TextAlign.end),
          ),
        ]),
      ),
      Divider(),
    ]);
  }
}

class EmptyData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Aucune',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: AppColors.gray3,
              ),
            )
          ],
        ));
  }
}
