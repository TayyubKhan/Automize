import 'dart:io';

import 'package:automise/Components/TextFormField.dart';
import 'package:automise/Provider.dart';
import 'package:automise/Routes/routes_name.dart';
import 'package:automise/const.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'Rounded_Button.dart';
import 'dropdownbutton.dart';

class RegistrationComponent extends StatelessWidget {
  VoidCallback onPressed;
  RegistrationComponent({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Text(
              'Car Registration',
              style: TextStyle(
                  fontSize: width * 0.07, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height * 0.045),
            Text(
              'Select the country where your car is registered and enter the registration number.',
              style: TextStyle(fontSize: width * 0.04),
            ),
            SizedBox(height: height * 0.015),
            Text(
              'If your car is registered in UK, or DVLA lookup will put its info automatically.',
              style: TextStyle(fontSize: width * 0.04),
            ),
            SizedBox(height: height * 0.045),
            AppTextFieldWithIcon2(
              controller: lastncontroller,
              focusNode: lastnamefocusNode,
              hint: 'Country',
              label: 'Country',
              icon: Icons.arrow_drop_down,
            ),
            SizedBox(height: height * 0.045),
            AppTextField(
                controller: lastncontroller,
                focusNode: lastnamefocusNode,
                hint: 'Car Registration Number',
                label: 'Car Registration Number'),
            SizedBox(
              height: height * 0.1,
            ),
            Column(
              children: [
                AppButton(title: 'Next', onPressed: onPressed),
                SizedBox(
                  height: height * 0.01,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip for now',
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CarDetails extends StatefulWidget {
  VoidCallback onPressed;
  CarDetails({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  Future<void> _takePicture() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        var _imageFile = File(image.path); // Save the image file in a variable
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppPovider>(context);
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: 2,
                  position: 1,
                  decorator: DotsDecorator(
                    activeColor: primaryColor,
                    size: const Size.square(8),
                    activeSize: const Size(24, 8),
                    spacing: const EdgeInsets.all(4),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Text(
                'Car Registration',
                style: TextStyle(
                    fontSize: width * 0.07, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: height * 0.045),
              Text(
                'Select the country where your car is registered and enter the registration number.',
                style: TextStyle(fontSize: width * 0.04),
              ),
              SizedBox(height: height * 0.015),
              Text(
                'If your car is registered in UK, or DVLA lookup will put its info automatically.',
                style: TextStyle(fontSize: width * 0.04),
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: ['A.B.F', 'AAR', 'AC', 'ACMA', 'AF'],
                title: 'Make*',
                selecteditemlabel: 'Make*',
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'Model*',
                selecteditemlabel: 'Search Model*',
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'Year',
                selecteditemlabel: 'Year',
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'Road Tax Status',
                selecteditemlabel: 'Road Tax Status',
              ),
              SizedBox(height: height * 0.045),
              AppTextFieldWithIcon2(
                onTapicon: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null) {
                    radtaxduedatecontroller.text = picked.toString();
                  }
                },
                controller: radtaxduedatecontroller,
                focusNode: roadtaxduefocus,
                hint: 'Road Tax Due Date',
                label: 'Road Tax Due Date',
                icon: Icons.calendar_month,
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'MOT Status',
                selecteditemlabel: 'MOT Status',
              ),
              SizedBox(height: height * 0.045),
              AppTextFieldWithIcon2(
                onTapicon: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null) {
                    motcontroller.text = picked.toString();
                  }
                },
                onTapOutside: (value) {
                  motfoucs.unfocus();
                },
                controller: motcontroller,
                focusNode: motfoucs,
                hint: 'MOT expiry',
                label: 'MOT expiry',
                icon: Icons.calendar_month,
              ),
              SizedBox(height: height * 0.045),
              AppTextFieldWithIcon2(
                onTapicon: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null) {
                    dateofregcontroller.text = picked.toString();
                  }
                },
                onTapOutside: (value) {
                  dateofregfocus.unfocus();
                },
                controller: dateofregcontroller,
                focusNode: dateofregfocus,
                hint: 'Date of Registration',
                label: 'Date of Registration',
                icon: Icons.calendar_month,
              ),
              SizedBox(height: height * 0.045),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: MyDropdownButton(
                      items: [],
                      title: 'Engine Size',
                      selecteditemlabel: 'Engine Size',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Expanded(
                    child: MyDropdownButton(
                      items: [],
                      title: 'CC',
                      selecteditemlabel: 'CC',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'Fuel/Power Type',
                selecteditemlabel: 'Fuel/Power Type',
              ),
              SizedBox(height: height * 0.045),
              MyDropdownButton(
                items: [],
                title: 'Body Type',
                selecteditemlabel: 'Body Type',
              ),
              SizedBox(height: height * 0.045),
              AppTextField(
                onTapOutside: (value) {
                  exteriorfocus.unfocus();
                },
                controller: exteriorcolorcontroller,
                focusNode: exteriorfocus,
                hint: 'Exterior Color*',
                label: 'Exterior Color*',
              ),
              SizedBox(height: height * 0.045),
              AppTextField(
                onTapOutside: (value) {
                  lastownershipfocus.unfocus();
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please Enter Exterior Color';
                  }
                },
                controller: lastownershipcontroller,
                focusNode: lastownershipfocus,
                hint: 'Last Ownership Change*',
                label: 'Last Ownership Change*',
              ),
              SizedBox(height: height * 0.045),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Car\'s Images',
                    style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: secondaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(3)),
                    child: InkWell(
                      onTap: _takePicture,
                      child: Icon(
                        Icons.add,
                        size: width * 0.06,
                        color: secondaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Column(
                children: [
                  AppButton(title: 'Next', onPressed: widget.onPressed),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.tabbar);
                      },
                      child: Text(
                        'Skip for now',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
