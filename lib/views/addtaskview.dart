import 'package:automise/Components/TextFormField.dart';
import 'package:automise/Routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../Components/dropdownbutton.dart';
import '../const.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({Key? key}) : super(key: key);

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  TextEditingController tasktype = TextEditingController();
  FocusNode tasknode = FocusNode();
  TextEditingController select = TextEditingController();
  FocusNode selectnode = FocusNode();
  TextEditingController tasktitle = TextEditingController();
  FocusNode titlenode = FocusNode();
  TextEditingController duedate = TextEditingController();
  FocusNode duenode = FocusNode();
  TextEditingController tasknote = TextEditingController();
  FocusNode tasknotenode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: greyColor,
        ),
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [Icon(Icons.close, color: Colors.black)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              AppTextField(
                  controller: tasktype,
                  focusNode: tasknode,
                  hint: 'Task Type',
                  label: 'Task Type'),
              SizedBox(height: height * 0.02),
              AppTextField(
                  controller: select,
                  focusNode: selectnode,
                  hint: 'Select Your Car',
                  label: 'Select Your Car'),
              SizedBox(height: height * 0.02),
              AppTextField(
                  controller: tasktitle,
                  focusNode: titlenode,
                  hint: 'Task Title',
                  label: 'Task Title'),
              SizedBox(height: height * 0.02),
              AppTextFieldWithIcon2(
                  onTapicon: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null) {
                      duedate.text = picked.toString();
                    }
                  },
                  controller: duedate,
                  icon: Icons.calendar_month,
                  hint: 'Due Date',
                  label: 'Due Date',
                  focusNode: duenode),
              SizedBox(height: height * 0.02),
              TextFormField(
                controller: tasknote,
                focusNode: tasknotenode,
                maxLines: 3,
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
                    hintText: 'Task Note',
                    floatingLabelStyle: const TextStyle(color: secondaryColor),
                    label: const Text('Task Note')),
              ),
              SizedBox(height: height * 0.2),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7),
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
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.taskview2);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Next',
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
      ),
    );
  }
}

class AddTaskView2 extends StatefulWidget {
  const AddTaskView2({Key? key}) : super(key: key);

  @override
  State<AddTaskView2> createState() => _AddTaskView2State();
}

class _AddTaskView2State extends State<AddTaskView2> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: greyColor,
        ),
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.close,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
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
                'Reminders',
                style: TextStyle(color: Colors.grey, fontSize: width * 0.05),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Upgrade exhaust to alphaholics Stainless Steel Sports Exhaust System',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: width * 0.06),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.08,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secondaryColor.withOpacity(0.2)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'Before Due Date:',
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.black45),
                    ),
                    SizedBox(
                      width: width * 0.023,
                    ),
                    Text(
                      '20 Mar 2023',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.04),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text.rich(
                  style: TextStyle(fontStyle: FontStyle.italic),
                  TextSpan(
                      text:
                          'You can set the time one and time you\'d like to recieve the reminder\'s  email in your ',
                      children: [
                        TextSpan(
                            text: 'preferences',
                            style: TextStyle(color: secondaryColor)),
                        TextSpan(text: ' page'),
                      ])),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reminder',
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
                        Icons.edit,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: height * 0.06,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: secondaryColor)),
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
                      title: 'Please Select a Reminder Date',
                      selecteditemlabel: 'Please Select a Reminder Date'),
                  const Icon(Icons.close)
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7),
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
                  SizedBox(
                    height: height * 0.3,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Save',
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
      ),
    );
  }
}
