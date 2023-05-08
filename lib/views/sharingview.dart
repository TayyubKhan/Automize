import 'package:automise/Routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/Model.dart';
import '../Provider.dart';
import '../const.dart';

class SharingView extends StatefulWidget {
  const SharingView({Key? key}) : super(key: key);

  @override
  State<SharingView> createState() => _SharingViewState();
}

class _SharingViewState extends State<SharingView> {
  bool show = false;
  TextEditingController search = TextEditingController();
  FocusNode searchnode = FocusNode();
  bool check = false;
  List<bool> containcolor = [true, false];
  List<bool> color = [true, false];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    color[1] = false;
                    color[0] = true;
                    setState(() {});
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: color[0] == true ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Shared with others',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: width * 0.04),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: InkWell(
                    onTap: () {
                      color[1] = true;
                      color[0] = false;
                      setState(() {});
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          color: color[1] == true ? primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Shared with you',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.04),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.07),
            color[0] == true
                ? Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Share with others',
                          style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.w500,
                              color: greyColor),
                        ),
                        SizedBox(height: height * 0.01),
                        const Text(
                          'Share your Car(s) or Collection to others.',
                          style: TextStyle(color: greyColor),
                        ),
                        const Text(
                          'Either with a public or private link.',
                          style: TextStyle(color: greyColor),
                        ),
                        SizedBox(height: height * 0.05),
                        Center(
                          child: SizedBox(
                            width: width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    containcolor[0] = true;
                                    containcolor[1] = false;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        color: containcolor[0] == true
                                            ? secondaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text('Cars',
                                            style: TextStyle(
                                              color: containcolor[0] == true
                                                  ? Colors.white
                                                  : Colors.black,
                                            ))),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    containcolor[0] = false;
                                    containcolor[1] = true;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        color: containcolor[1] == true
                                            ? secondaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text(
                                      'Garage',
                                      style: TextStyle(
                                        color: containcolor[1] == true
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        containcolor[0] == true
                            ? Expanded(
                                child: ListView.builder(
                                    itemCount: item.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                RoutesName.sharewithothers);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: width * 0.01,
                                                ),
                                                ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image(
                                                        height: height * 0.14,
                                                        image: AssetImage(
                                                            item[index].img))),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(item[index].title,
                                                            style: TextStyle(
                                                                color:
                                                                    greyColor,
                                                                fontSize:
                                                                    width *
                                                                        0.04,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        SizedBox(
                                                          height: height * 0.01,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width: width *
                                                                    0.05,
                                                                child: Icon(
                                                                  CupertinoIcons
                                                                      .link,
                                                                  color:
                                                                      secondaryColor,
                                                                  size: width *
                                                                      0.04,
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Text(
                                                                    'Active Shareable Link',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width: width *
                                                                    0.05,
                                                                child:
                                                                    const Text(
                                                                        '0'),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            5),
                                                                child: Text(
                                                                  'Direct Shares',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 10),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                  width: width *
                                                                      0.05,
                                                                  child:
                                                                      const Text(
                                                                          '2')),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Text(
                                                                    'Via Garage',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Public Link',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                width: width * 0.18,
                                                height: height * 0.04,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    color: primaryColor),
                                                child: const Center(
                                                    child: Text('Active')),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Public Links allow anyone to have access. You can stop this any time',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          show == false
                                              ? InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      show = !show;
                                                    });
                                                  },
                                                  child: Container(
                                                      width: width,
                                                      height: height * 0.07,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(7),
                                                          color: primaryColor),
                                                      child: Center(
                                                          child: Text(
                                                        'Generate Car-only Shareable Link',
                                                        style: TextStyle(
                                                            fontSize:
                                                                width * 0.047,
                                                            color: greyColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ))),
                                                )
                                              : Container(
                                                  width: width,
                                                  height: height * 0.1,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      color: Colors.white),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15,
                                                        vertical: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'https://123uyt.google.com',
                                                              style: TextStyle(
                                                                  color:
                                                                      greyColor,
                                                                  fontSize:
                                                                      width *
                                                                          0.044),
                                                            ),
                                                            const Icon(
                                                              Icons.copy,
                                                              color:
                                                                  secondaryColor,
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              height * 0.007,
                                                        ),
                                                        Text(
                                                          'Preview',
                                                          style: TextStyle(
                                                              color:
                                                                  secondaryColor,
                                                              fontSize:
                                                                  width * 0.04),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                          Visibility(
                                            visible: show,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  show = !show;
                                                });
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'Deactivate Public Link',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize:
                                                              width * 0.04),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: height * 0.01),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Private Link',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: width * 0.05),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    enableDrag: true,
                                                    backgroundColor:
                                                        const Color(0xfff9fafe),
                                                    elevation: 0.01,
                                                    useSafeArea: true,
                                                    context: context,
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20))),
                                                    builder:
                                                        (BuildContext context) {
                                                      return SizedBox(
                                                        height: height * 0.8,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                height: height *
                                                                    0.01,
                                                              ),
                                                              Center(
                                                                child:
                                                                    Container(
                                                                  width: width *
                                                                      0.1,
                                                                  height:
                                                                      height *
                                                                          0.01,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                            0.3),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.03),
                                                              TextFormField(
                                                                controller:
                                                                    search,
                                                                focusNode:
                                                                    searchnode,
                                                                decoration:
                                                                    InputDecoration(
                                                                        floatingLabelBehavior: FloatingLabelBehavior
                                                                            .auto,
                                                                        filled:
                                                                            true,
                                                                        fillColor: Colors
                                                                            .white,
                                                                        focusedBorder: OutlineInputBorder(
                                                                            borderRadius: BorderRadius.circular(
                                                                                10),
                                                                            borderSide: const BorderSide(
                                                                                color:
                                                                                    secondaryColor)),
                                                                        border: OutlineInputBorder(
                                                                            borderRadius: BorderRadius.circular(
                                                                                10),
                                                                            borderSide: BorderSide
                                                                                .none),
                                                                        hintText:
                                                                            'Search users',
                                                                        prefixIcon: InkWell(
                                                                            onTap:
                                                                                () {},
                                                                            child: const Icon(CupertinoIcons.search,
                                                                                color:
                                                                                    secondaryColor)),
                                                                        floatingLabelStyle: const TextStyle(
                                                                            color:
                                                                                secondaryColor),
                                                                        label:
                                                                            const Text(
                                                                          'Search users',
                                                                          style:
                                                                              TextStyle(color: Colors.grey),
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.03),
                                                              Expanded(
                                                                child: ListView
                                                                    .builder(
                                                                        itemCount:
                                                                            1,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return Container(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 20),
                                                                            decoration:
                                                                                BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                                                            width:
                                                                                width,
                                                                            height:
                                                                                height * 0.12,
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: BoxDecoration(border: Border.all(color: primaryColor, width: 2), shape: BoxShape.circle),
                                                                                  child: CircleAvatar(
                                                                                    radius: width * 0.09,
                                                                                    backgroundColor: const Color(0xffD9F1CE),
                                                                                    backgroundImage: const AssetImage('assets/av.png'),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.all(20),
                                                                                  child: Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Emily Clarke',
                                                                                        style: TextStyle(fontWeight: FontWeight.w700, color: greyColor, fontSize: width * 0.04),
                                                                                      ),
                                                                                      SizedBox(height: height * 0.01),
                                                                                      Row(
                                                                                        children: [
                                                                                          const Icon(Icons.location_on_outlined, color: Colors.grey),
                                                                                          Text(
                                                                                            'London, United Kingdom',
                                                                                            style: TextStyle(color: Colors.grey, fontSize: width * 0.035),
                                                                                          )
                                                                                        ],
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Consumer<AppPovider>(
                                                                                  builder: (context, value, child) {
                                                                                    return Checkbox(
                                                                                        activeColor: secondaryColor,
                                                                                        checkColor: Colors.white,
                                                                                        value: value.check[0],
                                                                                        onChanged: (v) {
                                                                                          value.setCheck(v!, 0);
                                                                                        });
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        }),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            15),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          Container(
                                                                        height: height *
                                                                            0.065,
                                                                        width: width *
                                                                            0.4,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.grey.withOpacity(0.7),
                                                                            borderRadius: BorderRadius.circular(10)),
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
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            12),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          Container(
                                                                        height: height *
                                                                            0.065,
                                                                        width: width *
                                                                            0.4,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                primaryColor,
                                                                            borderRadius:
                                                                                BorderRadius.circular(10)),
                                                                        child: Center(
                                                                            child: Text(
                                                                          'Share',
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
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(3),
                                                  decoration: BoxDecoration(
                                                      color: secondaryColor
                                                          .withOpacity(0.1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  child: const Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      color: secondaryColor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.01),
                                          const Text(
                                            'Private Links allow you to share it to anyone you choose. You can stop this any time',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ))
                                ],
                              )
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Share with you',
                          style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.w500,
                              color: greyColor),
                        ),
                        SizedBox(height: height * 0.01),
                        const Text(
                          'You can view and manage what car(s) or collection which members have shared with you',
                          style: TextStyle(color: greyColor),
                        ),
                        SizedBox(height: height * 0.05),
                        Center(
                          child: SizedBox(
                            width: width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    containcolor[0] = true;
                                    containcolor[1] = false;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        color: containcolor[0] == true
                                            ? secondaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text('Cars',
                                            style: TextStyle(
                                              color: containcolor[0] == true
                                                  ? Colors.white
                                                  : Colors.black,
                                            ))),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    containcolor[0] = false;
                                    containcolor[1] = true;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        color: containcolor[1] == true
                                            ? secondaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text(
                                      'Garage',
                                      style: TextStyle(
                                        color: containcolor[1] == true
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        containcolor[0] == true
                            ? Expanded(
                                child: ListView.builder(
                                    itemCount: item.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: width * 0.01,
                                              ),
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image(
                                                      height: height * 0.14,
                                                      image: AssetImage(
                                                          item[index].img))),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(item[index].title,
                                                          style: TextStyle(
                                                              color: greyColor,
                                                              fontSize:
                                                                  width * 0.04,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Text(
                                                          item[index]
                                                              .description,
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize:
                                                                  width * 0.04,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color:
                                                                        primaryColor,
                                                                    width: 2),
                                                                shape: BoxShape
                                                                    .circle),
                                                            child: CircleAvatar(
                                                              radius:
                                                                  width * 0.05,
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xffD9F1CE),
                                                              backgroundImage:
                                                                  const AssetImage(
                                                                      'assets/av.png'),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10),
                                                            child: Text(
                                                              'David Warner',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: width * 0.4,
                                            height: height * 0.06,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(Icons.checklist_outlined,
                                                    color: secondaryColor),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Text(
                                                    'Most Recent',
                                                    style: TextStyle(
                                                        color: secondaryColor),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: width * 0.4,
                                            height: height * 0.06,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Text(
                                                    'Accepted',
                                                    style: TextStyle(
                                                        color: secondaryColor),
                                                  ),
                                                ),
                                                Icon(
                                                  CupertinoIcons.chevron_down,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                  Container(
                                    width: width,
                                    height: height * 0.3,
                                    child: ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: primaryColor,
                                                            width: 2),
                                                        shape: BoxShape.circle),
                                                    child: CircleAvatar(
                                                      radius: width * 0.13,
                                                      backgroundColor:
                                                          const Color(
                                                              0xffD9F1CE),
                                                      backgroundImage:
                                                          const AssetImage(
                                                              'assets/av.png'),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              top: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              'Bruce Wayne\'s Garage',
                                                              style: TextStyle(
                                                                  color:
                                                                      greyColor,
                                                                  fontSize:
                                                                      width *
                                                                          0.04,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          SizedBox(
                                                            height:
                                                                height * 0.01,
                                                          ),
                                                          Row(
                                                            children: const [
                                                              Icon(
                                                                  Icons
                                                                      .location_on_outlined,
                                                                  color: Colors
                                                                      .grey),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Text(
                                                                    'London United Kingdom',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey)),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                height * 0.01,
                                                          ),
                                                          Row(
                                                            children: const [
                                                              Icon(
                                                                Icons.car_crash,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                child: Text(
                                                                  '5 Cars',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                ],
                              )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
