import 'package:e_commerce_ui/presentation/pages/home/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionItems extends StatelessWidget {
  CollectionItems({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController(
    initialScrollOffset: 215,
    keepScrollOffset: true,
  );

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
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 130.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/model.jpg'),
                              radius: 125.0,
                            ),
                          ),
                          index == 1
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 15, right: 15),
                                  child: CircleAvatar(
                                      radius: 27.0,
                                      backgroundColor: whiteColor,
                                      child: Icon(
                                        CupertinoIcons.heart_circle_fill,
                                        size: 55,
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
