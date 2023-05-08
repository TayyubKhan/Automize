import 'package:automise/Routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/dropdownbutton.dart';
import '../Utilis.dart';
import '../const.dart';

class TaskDetailView extends StatefulWidget {
  const TaskDetailView({Key? key}) : super(key: key);

  @override
  State<TaskDetailView> createState() => _TaskDetailViewState();
}

class _TaskDetailViewState extends State<TaskDetailView> {
  TextEditingController note = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController USD = TextEditingController();
  TextEditingController company = TextEditingController();
  FocusNode noteNode = FocusNode();
  FocusNode notenode = FocusNode();
  FocusNode descirptionnode = FocusNode();
  FocusNode amountnode = FocusNode();
  FocusNode usdnode = FocusNode();
  FocusNode companynode = FocusNode();
  bool _check = false;
  List<String> items = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: height * 0.1,
          backgroundColor: Colors.white,
          title: Container(
            width: width,
            height: height * 0.15,
            color: Colors.white,
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: greyColor,
                ),
                Text(
                  'Task Detail',
                  style: TextStyle(color: greyColor),
                ),
              ],
            ),
          ),
          actions: [
            PopupMenuButton(
                surfaceTintColor: CupertinoColors.white,
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                itemBuilder: (c) => [
                      PopupMenuItem(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.addtask);
                          },
                          child: const Text('Edit')),
                      const PopupMenuItem(
                          child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.red),
                      )),
                    ])
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upgrade exhaust to alphaholics Stainless Steel Sports Exhaust System',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: width * 0.06),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.35,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Taskviewtemp(
                          t1: 'Linked to',
                          w: const Text('1969 Alfa Romeo'),
                        ),
                        Taskviewtemp(
                          t1: 'Created on',
                          w: const Text('15 Mar 2023'),
                        ),
                        Taskviewtemp(
                          t1: 'Due Date',
                          w: const Text('20 Mar 2023'),
                        ),
                        Taskviewtemp(
                            t1: 'Reminders',
                            w: InkWell(
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
                                      height: height * 0.95,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
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
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Text(
                                              'Reminders',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: width * 0.05),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Text(
                                              'Upgrade exhaust to alphaholics Stainless Steel Sports Exhaust System',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: width * 0.06),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              height: height * 0.08,
                                              width: width,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: secondaryColor
                                                      .withOpacity(0.2)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.05,
                                                  ),
                                                  Text(
                                                    'Before Due Date:',
                                                    style: TextStyle(
                                                        fontSize: width * 0.04,
                                                        color: Colors.black45),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.023,
                                                  ),
                                                  Text(
                                                    '20 Mar 2023',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: width * 0.04),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            const Text.rich(
                                                style: TextStyle(
                                                    fontStyle:
                                                        FontStyle.italic),
                                                TextSpan(
                                                    text:
                                                        'You can set the time one and time you\'d like to recieve the reminder\'s  email in your ',
                                                    children: [
                                                      TextSpan(
                                                          text: 'preferences',
                                                          style: TextStyle(
                                                              color:
                                                                  secondaryColor)),
                                                      TextSpan(text: ' page'),
                                                    ])),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Reminder',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: width * 0.05),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(3),
                                                  decoration: BoxDecoration(
                                                      color: secondaryColor
                                                          .withOpacity(0.3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  child: const Center(
                                                    child: ImageIcon(
                                                        color: secondaryColor,
                                                        AssetImage(edit)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              children: [
                                                const Expanded(
                                                    child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 15),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color:
                                                                          secondaryColor)),
                                                    ),
                                                  ),
                                                )),
                                                MyDropdownButton(
                                                    items: const [
                                                      'On Due Date',
                                                      'Tomorrow',
                                                      'Day(s) before',
                                                      'Months(s) before'
                                                    ],
                                                    title:
                                                        'Please Select a Reminder Date',
                                                    selecteditemlabel:
                                                        'Please Select a Reminder Date'),
                                                const Icon(Icons.close)
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.1,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: height * 0.065,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey
                                                              .withOpacity(0.7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Center(
                                                          child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize:
                                                                width * 0.05),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 9),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      height: height * 0.065,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          color: primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Center(
                                                          child: Text(
                                                        'Save',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize:
                                                                width * 0.05),
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
                              child: const Text.rich(
                                  TextSpan(text: 'Next: ', children: [
                                TextSpan(
                                    text: '1 day(s)  before +1',
                                    style: TextStyle(color: secondaryColor)),
                              ])),
                            )),
                        Taskviewtemp(
                          t1: 'Status',
                          w: Row(
                            children: [
                              Checkbox(
                                  activeColor: secondaryColor,
                                  value: _check,
                                  onChanged: (value) {
                                    _check = value!;
                                    setState(() {});
                                  }),
                              _check == false
                                  ? const Text('Outstanding',
                                      style: TextStyle(color: Colors.red))
                                  : const Text('Completed',
                                      style: TextStyle(color: secondaryColor))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tasks Notes',
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
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text.rich(
                                        const TextSpan(
                                            text: 'Tasks Notes ',
                                            children: [
                                              TextSpan(
                                                  text:
                                                      '(Up to 20,000 characters)',
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ]),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.05),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: TextField(
                                          controller: note,
                                          focusNode: noteNode,
                                          maxLines: 20,
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: greyColor
                                                          .withOpacity(0.2))),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              secondaryColor))),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.1,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                  'Save',
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
                        },
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: secondaryColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    note.text,
                    style: const TextStyle(color: Colors.grey),
                  )
                ]),
          ),
        ));
  }
}

class Taskviewtemp extends StatelessWidget {
  String t1;
  Widget w;
  Taskviewtemp({Key? key, required this.t1, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(t1), w],
      ),
    );
  }
}
