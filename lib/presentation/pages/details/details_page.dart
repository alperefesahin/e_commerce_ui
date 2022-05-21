import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:e_commerce_ui/presentation/pages/details/widgets/details_page_body.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.collectionItemName, required this.collectionItemPrice, required this.imagePathOfTheModel}) : super(key: key);
  final String collectionItemName;
  final String collectionItemPrice;
  final String imagePathOfTheModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: DetailsPageBody(
        collectionItemName: collectionItemName,
        collectionItemPrice: collectionItemPrice,
        imagePathOfTheModel: imagePathOfTheModel,
      ),
    );
  }
}
