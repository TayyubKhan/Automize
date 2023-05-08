import 'package:flutter/material.dart';

import '../const.dart';

class TechinicalComponent extends StatelessWidget {
  String txt1, txt2;
  TechinicalComponent({Key? key, required this.txt1, required this.txt2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return InkWell(
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
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: SizedBox(
                height: height * 0.3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                        height: height * 0.04,
                      ),
                      Text(txt1,
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w500)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white24)),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: txt1),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: InkWell(
                              onTap: () {},
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
                            padding: const EdgeInsets.symmetric(horizontal: 15),
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
              ),
            );
          },
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.01),
          Text(
            txt1,
            style: const TextStyle(color: Colors.grey),
          ),
          SizedBox(height: height * 0.01),
          Text(
            txt2,
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: width * 0.04),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.7),
          ),
          SizedBox(height: height * 0.01),
        ],
      ),
    );
  }
}
