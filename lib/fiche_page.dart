import 'package:flutter/material.dart';
import 'package:yuka/res/app_colors.dart';
import 'package:yuka/res/app_images.dart';
import 'package:yuka/scores.dart';

class Bandeau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    double screenWidth = query.size.width;
    double screenHeight = query.size.height;
    return Container(
        color: AppColors.gray1,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                NutriscoreWidget(nutriscore: 'A'),
                //Expanded(flex: 0, child: ),
                Container(
                    height: 80, child: VerticalDivider(color: AppColors.gray3)),
                GroupWidget(group: 3),
              ],
            ),
            Divider(),
            EcoScoreWidget(ecoscore: 'D'),
            ProductDataWidget(label: 'France', value: '200g (égoutté 130g)')
          ],
        ));
  }
}

class NutriscoreWidget extends StatelessWidget {
  final String nutriscore;

  const NutriscoreWidget({required this.nutriscore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Nutriscore',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: AppColors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                getNutriscoreImage(nutriscore),
                height: 50,
              ),
            ],
          )),
    );
  }
}

class EcoScoreWidget extends StatelessWidget {
  final String ecoscore;

  const EcoScoreWidget({required this.ecoscore});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'EcoScore',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                getEcoscoreIcon(ecoscore),
                SizedBox(width: 10.0),
                Text(
                  getEcoscoreText(ecoscore),
                  style: TextStyle(
                    color: AppColors.gray3,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class GroupWidget extends StatelessWidget {
  final int group;

  const GroupWidget({required this.group});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Groupe NOVA',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(getNovascoreText(group)),
        ],
      ),
    ));
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
      children: <Widget>[
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
              children: <Widget>[
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Pancakes avec fruits'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDataWidget extends StatelessWidget {
  final String label;
  final String value;
  final String? seperator;

  const ProductDataWidget(
      {required this.label, required this.value, this.seperator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Quantité',
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
              )
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Text(
                'Vendu',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(label,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: AppColors.gray3),
                    textAlign: TextAlign.end),
              )
            ],
          ),
        ],
      ),
    );
  }
}
