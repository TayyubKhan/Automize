import 'package:flutter/material.dart';

import '../const.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  List<String> items = [
    'assets/car2.png',
    'assets/car21.png',
    'assets/car22.png',
    'assets/car23.png',
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gallery',
                style: TextStyle(
                    fontSize: width * 0.05, fontWeight: FontWeight.w500),
              ),
              InkWell(
                child: Container(
                  height: height * 0.03,
                  width: height * 0.03,
                  decoration: BoxDecoration(
                      color: secondaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: secondaryColor,
                      size: height * 0.027,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: height * 0.01,
                    mainAxisExtent: height * 0.32),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      child: Image(image: AssetImage(items[index])));
                }),
          )
        ],
      ),
    );
  }
}
