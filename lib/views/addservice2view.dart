import 'package:automise/Components/TextFormField.dart';
import 'package:automise/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';

class AddService2 extends StatefulWidget {
  const AddService2({Key? key}) : super(key: key);

  @override
  State<AddService2> createState() => _AddService2State();
}

class _AddService2State extends State<AddService2> {
  TextEditingController editingController = TextEditingController();
  TextEditingController addItemController = TextEditingController();

  void filterSearchResults(String query) {
    List<String> dummySearchList = [];
    dummySearchList.addAll(items);
    if (query.isNotEmpty) {
      List<String> dummyListData = [];
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(items);
      });
    }
  }

  void addItemToList() {
    setState(() {
      items.add(editingController.text);
      filteredItems.add(editingController.text);
      editingController.clear();
    });
  }

  List<String> items = [
    "Transmission",
    "Engine",
    "Brakes",
    "BodyWork",
    "Running Gear",
    "Exterior"
  ];

  List<String> filteredItems = [];

  String selecteditemlabel = 'Search through labels';
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController labelconroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  FocusNode titlenode = FocusNode();
  FocusNode labelnode = FocusNode();
  FocusNode descnode = FocusNode();
  @override
  void initState() {
    filteredItems.addAll(items);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: greyColor,
        ),
        title: const Text(
          'Add Service',
          style: TextStyle(color: greyColor),
        ),
        actions: const [
          Icon(
            Icons.close,
            color: greyColor,
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            color: background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Let\'s add some details?',
                  style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.05)),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                  'Please add a title and brief description to make your car\'s history file easily searchable',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04)),
              SizedBox(
                height: height * 0.09,
              ),
              AppTextField(
                  onTapOutside: (value) {
                    titlenode.unfocus();
                  },
                  controller: titlecontroller,
                  focusNode: titlenode,
                  hint: 'Title',
                  label: 'Title'),
              SizedBox(
                height: height * 0.01,
              ),
              TextFormField(
                onTapOutside: (value) {
                  descnode.unfocus();
                },
                controller: desccontroller,
                focusNode: descnode,
                maxLines: 5,
                decoration: InputDecoration(
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  focusColor: secondaryColor,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: secondaryColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Short Description(Optional)',
                  floatingLabelStyle: const TextStyle(color: secondaryColor),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Labels',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.05)),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        elevation: 0.1,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        builder: (BuildContext context) {
                          return Container(
                            height: height * 0.8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
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
                                  height: height * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (value) {
                                      filterSearchResults(value);
                                    },
                                    controller: editingController,
                                    decoration: const InputDecoration(
                                        labelText: "Search",
                                        hintText: "Search Through Labels",
                                        prefixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  ),
                                ),
                                editingController.text.isEmpty
                                    ? const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'If you can\'t find one, you can create it',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      )
                                    : TextButton(
                                        onPressed: addItemToList,
                                        child: const Text(
                                          'Add Items',
                                          style:
                                              TextStyle(color: secondaryColor),
                                        )),
                                Expanded(
                                  child: Consumer<AppPovider>(
                                    builder: (BuildContext context, value,
                                        Widget? child) {
                                      return ListView.builder(
                                        itemCount: filteredItems.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CheckboxListTile(
                                            activeColor: secondaryColor,
                                            checkColor: Colors.white,
                                            title: Text(filteredItems[index]),
                                            value: value.check[index],
                                            onChanged: (v) {
                                              value.setCheck(v!, index);
                                            },
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                          );
                                        },
                                      );
                                    },
                                  ),
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
                                ),
                                SizedBox(height: height * 0.07),
                              ],
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
              Text(
                'Select Existing label or create a custom one to make searching your history file easier',
                style: TextStyle(color: Colors.grey, fontSize: width * 0.04),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//
// class CheckBoxList extends StatefulWidget {
//   @override
//   _CheckBoxListState createState() => _CheckBoxListState();
// }
//
// class _CheckBoxListState extends State<CheckBoxList> {
//   TextEditingController editingController = TextEditingController();
//   TextEditingController addItemController = TextEditingController();
//
//   @override
//   void initState() {
//     filteredItems.addAll(items);
//     super.initState();
//   }
//
//   void filterSearchResults(String query) {
//     List<String> dummySearchList = List<String>();
//     dummySearchList.addAll(items);
//     if (query.isNotEmpty) {
//       List<String> dummyListData = List<String>();
//       dummySearchList.forEach((item) {
//         if (item.toLowerCase().contains(query.toLowerCase())) {
//           dummyListData.add(item);
//         }
//       });
//       setState(() {
//         filteredItems.clear();
//         filteredItems.addAll(dummyListData);
//       });
//       return;
//     } else {
//       setState(() {
//         filteredItems.clear();
//         filteredItems.addAll(items);
//       });
//     }
//   }
//
//   void addItemToList() {
//     setState(() {
//       items.add(addItemController.text);
//       filteredItems.add(addItemController.text);
//       addItemController.clear();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: TextField(
//             onChanged: (value) {
//               filterSearchResults(value);
//             },
//             controller: editingController,
//             decoration: InputDecoration(
//                 labelText: "Search",
//                 hintText: "Search",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: filteredItems.length,
//             itemBuilder: (BuildContext ctxt, int index) {
//               return CheckboxListTile(
//                 title: Text(filteredItems[index]),
//                 value: false,
//                 onChanged: (newValue) {},
//                 controlAffinity: ListTileControlAffinity.leading,
//               );
//             },
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: TextField(
//                   controller: addItemController,
//                   decoration: InputDecoration(
//                     labelText: "Add Item",
//                     hintText: "Type a new item here",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25.0))),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10.0),
//               RaisedButton(
//                 onPressed: addItemToList,
//                 child: Text("Add"),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
