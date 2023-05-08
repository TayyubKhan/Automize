import 'package:flutter/material.dart';

import '../Components/technicalcomponent.dart';
import '../const.dart';

class TechnicalView extends StatefulWidget {
  const TechnicalView({Key? key}) : super(key: key);

  @override
  State<TechnicalView> createState() => _TechnicalViewState();
}

class _TechnicalViewState extends State<TechnicalView> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5)),
              width: width,
              height: height * 0.05,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.info,
                          color: secondaryColor,
                        ),
                        const SizedBox(
                          width: 0.017,
                        ),
                        Text(
                          'Please tap the field you wish to edit',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TechinicalComponent(
                    txt1: 'Make',
                    txt2: 'Nissan',
                  ),
                  TechinicalComponent(
                    txt1: 'Model',
                    txt2: 'GTR R35',
                  ),
                  TechinicalComponent(
                    txt1: 'Year',
                    txt2: '2000',
                  ),
                  TechinicalComponent(
                    txt1: 'Body Type',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Driver Side',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Transmission',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Mileage',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Engine Size',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Registration Number',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Date of Registration',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Last Ownership Change',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'MOT Status',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'MOT Expiry',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Road Tax Status',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Exterior Color',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Interior Color',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Fuel/Power Type',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Body Type',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Driver Train',
                    txt2: '-',
                  ),
                  TechinicalComponent(
                    txt1: 'Chassis Number',
                    txt2: '-',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
