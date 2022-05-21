import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:e_commerce_ui/presentation/common_widgets/custom_text.dart';
import 'package:e_commerce_ui/presentation/pages/details/constants/texts.dart';
import 'package:e_commerce_ui/presentation/pages/details/widgets/add_to_card_widget.dart';
import 'package:e_commerce_ui/presentation/pages/details/widgets/item_details_dropdown.dart';
import 'package:e_commerce_ui/presentation/pages/home/constants/texts.dart';
import 'package:flutter/material.dart';

class CollectionItemDetails extends StatelessWidget {
  const CollectionItemDetails({Key? key, required this.collectionItemName, required this.collectionItemPrice}) : super(key: key);

  final String collectionItemName;
  final String collectionItemPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: collectionItemName,
                minFontSize: 35,
                maxFontSize: 40,
                textStyle: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  CustomText(
                    text: dollarSign,
                    minFontSize: 35,
                    maxFontSize: 40,
                    textStyle: TextStyle(color: orangeColor, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 10),
                  CustomText(
                    text: collectionItemPrice,
                    minFontSize: 30,
                    maxFontSize: 35,
                    textStyle: TextStyle(color: orangeColor, fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            ItemDetailsDropDown(
              text: colorText,
              customWidget: CircleAvatar(
                radius: 20.0,
                backgroundColor: whiteColor,
                child: CircleAvatar(radius: 15, backgroundColor: orangeColor),
              ),
            ),
            const SizedBox(width: 15),
            const ItemDetailsDropDown(
                text: sizeText,
                customWidget: CustomText(
                  text: xlText,
                  minFontSize: 30,
                  maxFontSize: 35,
                  textStyle: TextStyle(color: appBarIconButtonColor, fontWeight: FontWeight.w600),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: collectionItemDetailsText, style: TextStyle(fontSize: 18, color: greyColor, fontWeight: FontWeight.w600)),
                TextSpan(text: moreText, style: TextStyle(fontSize: 21, color: appBarIconButtonColor, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ),
        const AddToCardWidget()
      ],
    );
  }
}
