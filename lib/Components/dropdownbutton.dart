import 'package:automise/Provider.dart';
import 'package:automise/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDropdownButton extends StatefulWidget {
  List<String> items;
  String title, selecteditemlabel;
  MyDropdownButton(
      {super.key,
      required this.items,
      required this.title,
      required this.selecteditemlabel});

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  List<String> _filteredItems = [];

  TextEditingController _textEditingController = TextEditingController();

  void _addItem() {
    String newItem = _textEditingController.text.trim();
    if (newItem.isNotEmpty) {
      setState(() {
        widget.items.add(newItem);
        widget.selecteditemlabel = newItem;
        _textEditingController.clear();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppPovider>(context);
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: () {
          showModalBottomSheet(
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
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      width: width * 0.1,
                      height: height * 0.01,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: secondaryColor)),
                          border: const OutlineInputBorder(),
                          labelText: widget.title,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _textEditingController.clear();
                            },
                          ),
                        ),
                        controller: _textEditingController,
                        onChanged: (value) {
                          setState(() {
                            _filteredItems = widget.items
                                .where((item) => item
                                    .toLowerCase()
                                    .contains(value.toLowerCase()))
                                .toList();
                          });
                        },
                      ),
                    ),
                    Visibility(
                      visible:
                          _textEditingController.text.isEmpty ? false : true,
                      child: TextButton(
                          onPressed: () {
                            _addItem();
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.add),
                              Text('Add ${_textEditingController.text}')
                            ],
                          )),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: _filteredItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(_filteredItems[index]),
                            onTap: () {
                              setState(() {
                                widget.selecteditemlabel =
                                    _filteredItems[index];
                              });
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: widget.selecteditemlabel.contains(widget.title)
            ? Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: secondaryColor),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.selecteditemlabel.toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ));
  }
}
