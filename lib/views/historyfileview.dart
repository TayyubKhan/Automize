import 'package:automise/Components/TextFormField.dart';
import 'package:automise/Routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/dropdownbutton.dart';
import '../Provider.dart';
import '../Utilis.dart';
import '../const.dart';

class HistoryFileView extends StatefulWidget {
  const HistoryFileView({Key? key}) : super(key: key);

  @override
  State<HistoryFileView> createState() => _HistoryFileViewState();
}

class _HistoryFileViewState extends State<HistoryFileView> {
  TextEditingController name = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController USD = TextEditingController();
  TextEditingController company = TextEditingController();
  FocusNode namenode = FocusNode();
  FocusNode notenode = FocusNode();
  FocusNode descirptionnode = FocusNode();
  FocusNode amountnode = FocusNode();
  FocusNode usdnode = FocusNode();
  FocusNode companynode = FocusNode();
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
                  '2000 Nissan GTR R35',
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
                itemBuilder: (context) => [
                      PopupMenuItem(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RoutesName.newhistoryfile);
                          },
                          child: Text('Edit')),
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.white,
                  height: height * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                color: secondaryColor.withOpacity(0.3),
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
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Yearly Maintenance',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.05),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                            'No Advisors,MOT passed with flying colors,Dummy Text,No Advisors,MOT passed with flying colors,Dummy Text',
                            style: TextStyle(color: Colors.grey)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Description',
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
                              height: height * 0.3,
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
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Description',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.03),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8),
                                      child: AppTextField(
                                        controller: description,
                                        focusNode: descirptionnode,
                                        hint: 'Description',
                                        label: 'Description',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: InkWell(
                                            onTap: () {
                                              description.clear();
                                            },
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
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                        child: const Center(
                            child: ImageIcon(
                                color: secondaryColor, AssetImage(edit))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                description.text.isEmpty
                    ? const Text(
                        'Please add your car\'s mileage',
                        style: TextStyle(color: Colors.grey),
                      )
                    : Text(
                        description.text,
                        style: const TextStyle(color: Colors.grey),
                      ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    name.text.isEmpty
                        ? Text('Cost',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.05))
                        : Text('Total Cost',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.05)),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.withOpacity(0.3),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Add Cost',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.03),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8),
                                      child: AppTextField(
                                        controller: name,
                                        focusNode: namenode,
                                        hint: 'Name',
                                        label: 'Name',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: AppTextField(
                                            controller: amount,
                                            focusNode: amountnode,
                                            hint: 'Amount',
                                            label: 'Amount',
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Expanded(
                                            child: MyDropdownButton(
                                          items: const ['USD', 'EURO', 'RIYAL'],
                                          title: 'USD',
                                          selecteditemlabel: 'USD',
                                        )),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 8),
                                      child: AppTextField(
                                        controller: company,
                                        focusNode: companynode,
                                        hint: 'Company',
                                        label: 'Company',
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.3,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: InkWell(
                                            onTap: () {
                                              company.clear();
                                              name.clear();
                                              amount.clear();
                                            },
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
                                              horizontal: 15),
                                          child: InkWell(
                                            onTap: () {
                                              namenode.unfocus();
                                              Navigator.pop(context);
                                            },
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
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: width * 0.05),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                            Icons.add,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                name.text.isEmpty
                    ? const Text(
                        'Please add cost',
                        style: TextStyle(color: Colors.grey),
                      )
                    : Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            height: height * 0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Petrol',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '£ 60.00',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Shell',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Row(
                                      children: const [
                                        ImageIcon(
                                            color: secondaryColor,
                                            AssetImage(invoice)),
                                        Text(
                                          'Invoice.pdf',
                                          style:
                                              TextStyle(color: secondaryColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            height: height * 0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Service',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '£ 350.00',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Auto Scan',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Row(
                                      children: const [
                                        ImageIcon(
                                            color: secondaryColor,
                                            AssetImage(invoice)),
                                        Text(
                                          'Invoice.pdf',
                                          style:
                                              TextStyle(color: secondaryColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: InkWell(
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
                                    height: height * 0.3,
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
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            'Description',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: height * 0.03),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 8),
                                            child: AppTextField(
                                              controller: notes,
                                              focusNode: notenode,
                                              hint: 'Notes',
                                              label: 'Notes',
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: InkWell(
                                                  onTap: () {
                                                    notes.clear();
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
                                                                .circular(10)),
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    height: height * 0.065,
                                                    width: width * 0.4,
                                                    decoration: BoxDecoration(
                                                        color: primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                        child: Text(
                                                      'Add',
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
                            child: ImageIcon(
                                color: secondaryColor, AssetImage(edit))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                notes.text.isEmpty
                    ? const Text('Please add notes',
                        style: TextStyle(color: Colors.grey))
                    : Text(
                        notes.text,
                        style: const TextStyle(color: Colors.grey),
                      ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Images',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.4,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: height * 0.0001,
                        mainAxisExtent: height * 0.2),
                    children: const [
                      Image(image: AssetImage('assets/car2.png')),
                      Image(image: AssetImage('assets/car21.png')),
                      Image(image: AssetImage('assets/car22.png')),
                      Image(image: AssetImage('assets/car23.png')),
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
                      'Attachments',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                        child: Icon(
                          Icons.upload_file,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  height: height * 0.07,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Service Invoice.jpg',
                            style: TextStyle(color: secondaryColor),
                          ),
                          Row(
                            children: const [
                              ImageIcon(
                                  color: secondaryColor, AssetImage(invoice)),
                              Text(
                                'Invoice.pdf',
                                style: TextStyle(color: secondaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Labels',
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                          style:
                                              TextStyle(fontSize: width * 0.04),
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
                                              horizontal: 12),
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
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                        child: const Center(
                            child: ImageIcon(
                                color: secondaryColor, AssetImage(edit))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            'Annual Maintenance',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
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
                      height: height * 0.03,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                'Custom Label',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
          ),
        ));
  }
}
