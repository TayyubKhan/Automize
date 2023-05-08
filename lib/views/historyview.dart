import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Model.dart';
import '../const.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Expanded(
          child: ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                height: height * 0.14,
                                image: AssetImage(item[index].img))),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item[index].title,
                                    style: TextStyle(
                                        color: greyColor,
                                        fontSize: width * 0.04,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(item[index].description,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: width * 0.04,
                                    )),
                                SizedBox(
                                  height: height * 0.047,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.list_outlined,
                                          color: Colors.grey,
                                          size: width * 0.04,
                                        ),
                                        Text('${item[index].entries} Entries',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: width * 0.04,
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * 0.14,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.arrow_2_circlepath,
                                          color: Colors.grey,
                                          size: width * 0.04,
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text(
                                          item[index].date,
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    )
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
        ));
  }
}
