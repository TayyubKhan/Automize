import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Routes/routes_name.dart';
import '../const.dart';

class TaskView extends StatefulWidget {
  const TaskView({Key? key}) : super(key: key);

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<bool> list = [true, false, false];
  bool check = false;
  bool check2 = true;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
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
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                list[0] == true
                    ? Text(
                        'All',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w600),
                      )
                    : list[1] == true
                        ? Text('Completed',
                            style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w600))
                        : Text('Outstanding',
                            style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w600)),
                Row(children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.grey,
                        ),
                      ))),
                  SizedBox(
                    width: width * 0.05,
                  ),
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
                            height: height * 0.28,
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
                                  TextButton(
                                      onPressed: () {
                                        list[0] = true;
                                        list[1] = false;
                                        list[2] = false;
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text(
                                        'All',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.05,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        list[0] = false;
                                        list[1] = true;
                                        list[2] = false;
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text(
                                        'Completed',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.05,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        list[0] = false;
                                        list[1] = false;
                                        list[2] = true;
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text(
                                        'Outstanding',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.05,
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.filter_list_alt,
                                  color: Colors.grey,
                                )))),
                  )
                ])
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            list[1] == true
                ? Container(
                    width: width * 0.9,
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Exhaust Upgrade',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.05)),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Created on  15 Mar 2023'),
                                  Icon(Icons.arrow_forward_ios)
                                ]),
                            const Text('Due on  20 Mar 2023'),
                            Divider(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${'2000 Nissan GTR R35'.substring(0, 16)}...',
                                    style: const TextStyle(color: greyColor),
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          activeColor: secondaryColor,
                                          value: check2,
                                          onChanged: (value) {
                                            check2 = value!;
                                            setState(() {});
                                          }),
                                      check2 == false
                                          ? const Text('Outstanding',
                                              style:
                                                  TextStyle(color: Colors.red))
                                          : const Text('Completed',
                                              style: TextStyle(
                                                  color: secondaryColor)),
                                    ],
                                  )
                                ])
                          ]),
                    ),
                  )
                : list[2] == true
                    ? Container(
                        width: width * 0.9,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Exhaust Upgrade',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.05)),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Created on  15 Mar 2023'),
                                      Icon(Icons.arrow_forward_ios)
                                    ]),
                                const Text('Due on  20 Mar 2023'),
                                Divider(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${'2000 Nissan GTR R35'.substring(0, 16)}...',
                                        style:
                                            const TextStyle(color: greyColor),
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                              activeColor: secondaryColor,
                                              value: check,
                                              onChanged: (value) {
                                                check = value!;
                                                setState(() {});
                                              }),
                                          check == false
                                              ? const Text('Outstanding',
                                                  style: TextStyle(
                                                      color: Colors.red))
                                              : const Text('Completed',
                                                  style: TextStyle(
                                                      color: secondaryColor)),
                                        ],
                                      )
                                    ])
                              ]),
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            width: width * 0.9,
                            height: height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Exhaust Upgrade',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: width * 0.05)),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Created on  15 Mar 2023'),
                                          Icon(Icons.arrow_forward_ios)
                                        ]),
                                    const Text('Due on  20 Mar 2023'),
                                    Divider(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${'2000 Nissan GTR R35'.substring(0, 16)}...',
                                            style: const TextStyle(
                                                color: greyColor),
                                          ),
                                          Row(
                                            children: [
                                              Checkbox(
                                                  activeColor: secondaryColor,
                                                  value: check,
                                                  onChanged: (value) {
                                                    check = value!;
                                                    setState(() {});
                                                  }),
                                              check == false
                                                  ? const Text('Outstanding',
                                                      style: TextStyle(
                                                          color: Colors.red))
                                                  : const Text('Completed',
                                                      style: TextStyle(
                                                          color:
                                                              secondaryColor)),
                                            ],
                                          )
                                        ])
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            width: width * 0.9,
                            height: height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Exhaust Upgrade',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: width * 0.05)),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Created on  15 Mar 2023'),
                                          Icon(Icons.arrow_forward_ios)
                                        ]),
                                    const Text('Due on  20 Mar 2023'),
                                    Divider(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${'2000 Nissan GTR R35'.substring(0, 16)}...',
                                            style: const TextStyle(
                                                color: greyColor),
                                          ),
                                          Row(
                                            children: [
                                              Checkbox(
                                                  activeColor: secondaryColor,
                                                  value: check2,
                                                  onChanged: (value) {
                                                    check2 = value!;
                                                    setState(() {});
                                                  }),
                                              check2 == false
                                                  ? const Text('Outstanding',
                                                      style: TextStyle(
                                                          color: Colors.red))
                                                  : const Text('Completed',
                                                      style: TextStyle(
                                                          color:
                                                              secondaryColor)),
                                            ],
                                          )
                                        ])
                                  ]),
                            ),
                          )
                        ],
                      ),
            SizedBox(
              height: height * 0.05,
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
                    Navigator.pushNamed(context, RoutesName.taskdetails);
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
      ),
    );
  }
}
