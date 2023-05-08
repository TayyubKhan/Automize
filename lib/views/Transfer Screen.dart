import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider.dart';
import '../const.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  bool show = false;
  TextEditingController search = TextEditingController();
  FocusNode searchnode = FocusNode();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ownership Transfer',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: width * 0.05),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Text(
              'This is where you can manage the ownership transfer of cars to others and to yourself',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            show == false
                ? InkWell(
                    onTap: () {
                      {
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.withOpacity(0.3),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height * 0.03),
                                    TextFormField(
                                      controller: search,
                                      focusNode: searchnode,
                                      decoration: InputDecoration(
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.auto,
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color: secondaryColor)),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          hintText: 'Search users',
                                          prefixIcon: InkWell(
                                              onTap: () {},
                                              child: const Icon(
                                                  CupertinoIcons.search,
                                                  color: secondaryColor)),
                                          floatingLabelStyle: const TextStyle(
                                              color: secondaryColor),
                                          label: const Text(
                                            'Search users',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )),
                                    ),
                                    SizedBox(height: height * 0.03),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              width: width,
                                              height: height * 0.12,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: primaryColor,
                                                            width: 2),
                                                        shape: BoxShape.circle),
                                                    child: CircleAvatar(
                                                      radius: width * 0.09,
                                                      backgroundColor:
                                                          const Color(
                                                              0xffD9F1CE),
                                                      backgroundImage:
                                                          const AssetImage(
                                                              'assets/av.png'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Emily Clarke',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: greyColor,
                                                              fontSize:
                                                                  width * 0.04),
                                                        ),
                                                        SizedBox(
                                                            height:
                                                                height * 0.01),
                                                        Row(
                                                          children: [
                                                            const Icon(
                                                                Icons
                                                                    .location_on_outlined,
                                                                color: Colors
                                                                    .grey),
                                                            Text(
                                                              'London, United Kingdom',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize:
                                                                      width *
                                                                          0.035),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Consumer<AppPovider>(
                                                    builder: (context, value,
                                                        child) {
                                                      return Checkbox(
                                                          activeColor:
                                                              secondaryColor,
                                                          checkColor:
                                                              Colors.white,
                                                          value: value.check[0],
                                                          onChanged: (v) {
                                                            value.setCheck(
                                                                v!, 0);
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
                                          padding: const EdgeInsets.symmetric(
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
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: width * 0.05),
                                              )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
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
                                                'Transfer',
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
                      }

                      // setState(() {
                      //   show = !show;
                      // });
                    },
                    child: Container(
                        width: width,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: primaryColor),
                        child: Center(
                            child: Text(
                          'Transfer ownership of this car',
                          style: TextStyle(
                              fontSize: width * 0.047,
                              color: greyColor,
                              fontWeight: FontWeight.w600),
                        ))),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transferred to',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.045),
                      ),
                      Container(
                        width: width,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'https://123uyt.google.com',
                                    style: TextStyle(
                                        color: greyColor,
                                        fontSize: width * 0.044),
                                  ),
                                  const Icon(
                                    Icons.copy,
                                    color: secondaryColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height * 0.007,
                              ),
                              Text(
                                'Preview',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: width * 0.04),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ));
  }
}
