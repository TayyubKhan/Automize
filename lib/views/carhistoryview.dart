import 'package:automise/Provider.dart';
import 'package:automise/Routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';

class CarHistoryView extends StatefulWidget {
  const CarHistoryView({Key? key}) : super(key: key);

  @override
  State<CarHistoryView> createState() => _CarHistoryViewState();
}

class _CarHistoryViewState extends State<CarHistoryView> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: secondaryColor)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Search Title',
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: secondaryColor,
                    ),
                    suffixIcon:
                        InkWell(onTap: () {}, child: const Icon(Icons.close)),
                    floatingLabelStyle: const TextStyle(color: secondaryColor),
                    label: const Text(
                      'Search Title',
                      style: TextStyle(color: Colors.grey),
                    )),
              )),
              InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      enableDrag: true,
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
                          height: height * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Center(
                                  child: Container(
                                    width: width * 0.1,
                                    height: height * 0.01,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'Filters',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.05),
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[0],
                                            onChanged: (v) {
                                              value.setCheck(v!, 0);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Transmission',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[1],
                                            onChanged: (v) {
                                              value.setCheck(v!, 1);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Engine',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[2],
                                            onChanged: (v) {
                                              value.setCheck(v!, 2);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Brakes',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[3],
                                            onChanged: (v) {
                                              value.setCheck(v!, 3);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Bodywork',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[4],
                                            onChanged: (v) {
                                              value.setCheck(v!, 4);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Running Gear',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Consumer<AppPovider>(
                                      builder: (context, value, child) {
                                        return Checkbox(
                                            focusColor: secondaryColor,
                                            checkColor: Colors.white,
                                            value: value.check[5],
                                            onChanged: (v) {
                                              value.setCheck(v!, 5);
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    Text(
                                      'Annual Maintenance',
                                      style: TextStyle(fontSize: width * 0.04),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.2,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: height * 0.065,
                                          width: width * 0.4,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                              child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.05),
                                          )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: height * 0.065,
                                          width: width * 0.4,
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                              child: Text(
                                            'Apply Filter',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
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
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: width * 0.13,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Icon(
                        Icons.filter_alt_outlined,
                        color: secondaryColor,
                        size: width * 0.1,
                      )),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    width: width * 0.3,
                    height: height * 0.03,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Custom Label',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
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
                    width: width * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(5)),
                    width: width * 0.38,
                    height: height * 0.03,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.017,
                              ),
                              const Text(
                                'Maintenance',
                                style: TextStyle(
                                    color: CupertinoColors.white,
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
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '14 Mar 2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(3)),
                        child: const Center(
                          child: Text(
                            'Admin',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MOT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.04),
                      ),
                      Text(
                        '£ 60.0',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.04),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                      'No Advisors,MOT passed with flying colors,Dummy Text',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: secondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)),
                    width: width * 0.15,
                    height: height * 0.04,
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child:
                            Text('MOT', style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.019,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '14 Mar 2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(2)),
                        child: const Center(
                          child: Text(
                            'Maintenance',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Yearly Maintenance',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.04),
                      ),
                      Text(
                        '£ 60.0',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.04),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                      'No Advisors,MOT passed with flying colors,Dummy Text',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: height * 0.04,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('Annual Maintenance',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: height * 0.04,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('Custom Label',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.historyFile);
                },
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: greyColor,
                    size: width * 0.1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
