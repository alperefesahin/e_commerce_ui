import 'package:e_commerce_ui/presentation/pages/details/widgets/collection_item_details.dart';
import 'package:e_commerce_ui/presentation/pages/details/widgets/collection_item_image.dart';
import 'package:flutter/material.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({Key? key, required this.collectionItemName, required this.collectionItemPrice, required this.imagePathOfTheModel}) : super(key: key);

  final String collectionItemName;
  final String collectionItemPrice;
  final String imagePathOfTheModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CollectionItemImage(imagePathOfTheModel: imagePathOfTheModel),
        CollectionItemDetails(collectionItemName: collectionItemName, collectionItemPrice: collectionItemPrice),
      ],
    );
  }
}
