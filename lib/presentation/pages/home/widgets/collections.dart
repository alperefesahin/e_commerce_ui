import 'package:e_commerce_ui/presentation/pages/home/widgets/home_page_custom_text.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 140,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              String assetName = '';
              String modelName = '';

              if (index == 0) {
                assetName = 'assets/man.jpg';
                modelName = 'Man';
              } else if (index == 1) {
                assetName = 'assets/woman.jpg';
                modelName = 'Woman';
              } else if (index == 2) {
                assetName = 'assets/kid.jpg';
                modelName = 'Kids';
              } else if (index == 3) {
                assetName = 'assets/baby.jpg';
                modelName = 'Babys';
              }
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(assetName),
                                  fit: BoxFit.fill),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(60),
                              )),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 10),
                    child: HomePageCustomText(
                      text: modelName,
                      minFontSize: 15,
                      maxFontSize: 18,
                      textStyle: TextStyle(
                          fontWeight:
                              index == 0 ? FontWeight.w600 : FontWeight.w500),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
