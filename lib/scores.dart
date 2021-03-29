import 'package:flutter/material.dart';
import 'package:yuka/res/app_colors.dart';
import 'package:yuka/res/app_images.dart';
import 'package:yuka/res/resources.dart';

import 'app_icons.dart';

String getNutriscoreImage(String nutriscore) {
  switch (nutriscore) {
    case 'A':
      return AppImages.nutriscoreA;
    case 'B':
      return AppImages.nutriscoreB;
    case 'C':
      return AppImages.nutriscoreC;
    case 'D':
      return AppImages.nutriscoreD;
    case 'E':
      return AppImages.nutriscoreE;
    default:
      return AppImages.nutriscoreE;
  }
}

Icon getEcoscoreIcon(String ecoscore) {
  switch (ecoscore) {
    case 'A':
      return Icon(
        AppIcons.ecoscoreA,
        color: AppColors.ecoScoreA,
      );
    case 'B':
      return Icon(
        AppIcons.ecoscoreB,
        color: AppColors.ecoScoreB,
      );
    case 'C':
      return Icon(
        AppIcons.ecoscoreC,
        color: AppColors.ecoScoreC,
      );
    case 'D':
      return Icon(
        AppIcons.ecoscoreD,
        color: AppColors.ecoScoreD,
      );
    case 'E':
      return Icon(
        AppIcons.ecoscoreE,
        color: AppColors.ecoScoreE,
      );
    default:
      return Icon(
        AppIcons.ecoscoreE,
        color: AppColors.ecoScoreE,
      );
  }
}

String getEcoscoreText(String ecoscore) {
  switch (ecoscore) {
    case 'A':
      return 'Très faible impact environnemental';
    case 'B':
      return 'Faible impact environnemental';
    case 'C':
      return "Impact modéré sur l'environnement";
    case 'D':
      return 'Impact environnemental élevé';
    case 'E':
      return 'Impact environnemental très élevé';
    default:
      return 'Impact environnemental très élevé';
  }
}

String getNovascoreText(int novaScore) {
  switch (novaScore) {
    case 1:
      return 'Aliments non transformés ou transformés minimalement';
    case 2:
      return 'Ingrédients culinaires transformés';
    case 3:
      return 'Aliments transformés';
    case 4:
      return 'Produits alimentaires et boissons ultra-transformés';
    default:
      return 'Produits alimentaires et boissons ultra-transformés';
  }
}
