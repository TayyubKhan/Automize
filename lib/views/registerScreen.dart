import 'package:automise/Components/Rounded_Button.dart';
import 'package:automise/Components/TextFormField.dart';
import 'package:automise/const.dart';
import 'package:flutter/material.dart';

import '../Routes/routes_name.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width * 1,
              height: height * 0.27,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30)),
                color: greyColor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: Image(
                        height: height * 0.1,
                        width: width * 0.3,
                        image: const AssetImage('assets/logo.png')),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'and start building your digital garage',
                    style:
                        TextStyle(fontSize: width * 0.04, color: Colors.white),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.5,
                  color: greyColor,
                ),
                Container(
                  width: width * 1,
                  height: height * 0.68,
                  decoration: const BoxDecoration(
                      color: background,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        AppTextField(
                          hint: 'First Name',
                          label: 'First Name',
                          focusNode: fnfocusNode,
                          onTapOutside: (value) {
                            fnfocusNode.unfocus();
                          },
                          onFieldSubmitted: (value) {
                            fnfocusNode.unfocus();
                          },
                          controller: fncontroller,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppTextField(
                          onTapOutside: (value) {
                            lastnamefocusNode.unfocus();
                          },
                          onFieldSubmitted: (value) {
                            lastnamefocusNode.unfocus();
                          },
                          hint: 'last Name',
                          label: 'Last Name',
                          controller: lastncontroller,
                          focusNode: lastnamefocusNode,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppTextField(
                          onTapOutside: (value) {
                            emailfocus.unfocus();
                          },
                          onFieldSubmitted: (value) {
                            emailfocus.unfocus();
                          },
                          hint: 'Email',
                          label: 'Email',
                          controller: emailcontroller,
                          focusNode: emailfocus,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppTextFieldWithIcon(
                            onTapOutside: (value) {
                              passwordfocus.unfocus();
                            },
                            onFieldSubmitted: (value) {
                              passwordfocus.unfocus();
                            },
                            controller: passwordcontroller,
                            hint: 'Password',
                            label: 'Password',
                            focusNode: passwordfocus),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppTextFieldWithIcon(
                            onTapOutside: (value) {
                              repeatpasswordfocus.unfocus();
                            },
                            onFieldSubmitted: (value) {
                              repeatpasswordfocus.unfocus();
                            },
                            controller: repeatpasswordcontroller,
                            hint: 'Confirm Password',
                            label: 'Confirm Password',
                            focusNode: repeatpasswordfocus),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                value: check,
                                onChanged: (value) {
                                  setState(() {
                                    check = value!;
                                  });
                                }),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'By registering for Automise, I agree to the',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.049),
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Terms of Services',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.05))),
                                    Text('and',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width * 0.05)),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Privacy Policy.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: width * 0.05))),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppButton(
                            title: 'Register',
                            onPressed: () {
                              Navigator.pushNamed(context, RoutesName.login);
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: width * 0.05)),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.login);
                                },
                                child: Text('Login',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.05)))
                          ],
                        ),
                      ],
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
