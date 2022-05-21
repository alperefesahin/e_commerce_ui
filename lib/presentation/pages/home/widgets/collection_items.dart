import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:e_commerce_ui/presentation/pages/home/constants/texts.dart';
import 'package:e_commerce_ui/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionItems extends StatelessWidget {
  CollectionItems({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController(
    initialScrollOffset: 215,
    keepScrollOffset: true,
  );
  final imagePathOfTheModel = "assets/model.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      width: MediaQuery.of(context).size.width,
      height: 260,
      child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).navigate(DetailsRoute(
                          collectionItemName: hoodieRose,
                          collectionItemPrice: priceOfTheItem,
                          imagePathOfTheModel: imagePathOfTheModel,
                        ));
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 130.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(imagePathOfTheModel),
                              radius: 125.0,
                            ),
                          ),
                          index == 1
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 15, right: 15),
                                  child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor: whiteColor,
                                      child: Icon(
                                        CupertinoIcons.heart_circle_fill,
                                        size: 50,
                                        color: orangeColor,
                                      )),
                                )
                              : Container(),
                        ],
                      )),
                ),
              ],
            );
          }),
    );
  }
}
