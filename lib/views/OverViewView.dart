import 'package:automise/Utilis.dart';
import 'package:automise/const.dart';
import 'package:flutter/material.dart';

class OverViewView extends StatefulWidget {
  const OverViewView({Key? key}) : super(key: key);

  @override
  State<OverViewView> createState() => _OverViewViewState();
}

class _OverViewViewState extends State<OverViewView> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 15)],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              height: height * 0.61,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('assets/car2.png'),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2000 Nissan GTR R35',
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: height * 0.03,
                          width: height * 0.03,
                          decoration: BoxDecoration(
                              color: secondaryColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: ImageIcon(
                                color: secondaryColor,
                                size: height * 0.027,
                                const AssetImage(edit)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextButton(
                        onPressed: () {},
                        child:
                            const Text('+ Add your car\'s short description')),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    IconData(0xe800,
                                        fontFamily: 'MyFlutterApp',
                                        fontPackage: null),
                                    color: primaryColor,
                                  ),
                                  Text(
                                    '0 Tasks',
                                    style: TextStyle(
                                        fontSize: width * 0.05,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.017),
                              child: const VerticalDivider(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const ImageIcon(
                                      color: primaryColor, AssetImage(edit)),
                                  Text(
                                    '0 Entries',
                                    style: TextStyle(
                                        fontSize: width * 0.05,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.019,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 15)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: height * 0.1,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: primaryColor, width: 2),
                                shape: BoxShape.circle),
                            child: CircleAvatar(
                              radius: width * 0.05,
                              backgroundColor: const Color(0xffD9F1CE),
                              backgroundImage:
                                  const AssetImage('assets/av.png'),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Johnson Smith',
                                style: TextStyle(
                                    color: greyColor,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.grey,
                                  size: height * 0.019,
                                ),
                                Text('London, United Kingdom',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: height * 0.02)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.22,
                        ),
                        Center(
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: height * 0.023,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text('Key information',
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    height: height * 0.23,
                    width: width,
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                    const AssetImage(
                                      'assets/Vector.png',
                                    ),
                                    color: secondaryColor,
                                    size: height * 0.04),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  '2000',
                                  style: TextStyle(
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.w500,
                                      color: greyColor),
                                ),
                                SizedBox(
                                  height: height * 0.07,
                                ),
                                ImageIcon(
                                    const AssetImage(
                                      'assets/cc_ic.png',
                                    ),
                                    color: secondaryColor,
                                    size: height * 0.04),
                                Text(
                                  'CC',
                                  style: TextStyle(
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                  const AssetImage(
                                    'assets/make_ic.png',
                                  ),
                                  color: secondaryColor,
                                  size: height * 0.04),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'Nissan',
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    color: greyColor),
                              ),
                              SizedBox(
                                height: height * 0.07,
                              ),
                              ImageIcon(
                                  const AssetImage(
                                    'assets/Vector-3.png',
                                  ),
                                  color: secondaryColor,
                                  size: height * 0.04),
                              Text(
                                '-',
                                style: TextStyle(
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                    const AssetImage(
                                      'assets/Vector-1.png',
                                    ),
                                    color: secondaryColor,
                                    size: height * 0.04),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'GTR R35',
                                  style: TextStyle(
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.w500,
                                      color: greyColor),
                                ),
                                SizedBox(
                                  height: height * 0.07,
                                ),
                                ImageIcon(
                                    const AssetImage(
                                      'assets/Vector-4.png',
                                    ),
                                    color: secondaryColor,
                                    size: height * 0.04),
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Key Moments and Facts',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: height * 0.03,
                        width: height * 0.03,
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: ImageIcon(
                              color: secondaryColor,
                              size: height * 0.027,
                              const AssetImage(edit)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const Text(
                    'Nissan GRR R35 is a Sports Car and grand tourer produced by Nissan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          {
                            showModalBottomSheet(
                              backgroundColor: const Color(0xfff9fafe),
                              elevation: 0.01,
                              useSafeArea: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: height * 0.4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Center(
                                          child: Container(
                                            width: width * 0.1,
                                            height: height * 0.01,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        Text('Add your car\'s description',
                                            style: TextStyle(
                                                fontSize: width * 0.05,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            maxLines: 3,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        style:
                                                            BorderStyle.solid,
                                                        color: Colors.grey)),
                                                filled: true,
                                                fillColor: Colors.white,
                                                hintText: 'Type here...'),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  height: height * 0.065,
                                                  width: width * 0.4,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey
                                                          .withOpacity(0.7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                      child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: width * 0.05),
                                                  )),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  height: height * 0.065,
                                                  width: width * 0.4,
                                                  decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                      child: Text(
                                                    'Add',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: width * 0.05),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
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
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const Text(
                    'Please Enter Car\'s Description',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History File',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
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
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const Text(
                    'Please add your car\'s documentation and history',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
