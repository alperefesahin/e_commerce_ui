import 'package:e_commerce_ui/presentation/pages/home/widgets/home_page_custom_text.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 140,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15, top: 15),
                    child: HomePageCustomText(
                        text: 'Name', minFontSize: 15, maxFontSize: 18),
                  )
                ],
              );
            }),
      ),
    );
  }
}
