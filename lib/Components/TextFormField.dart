import 'package:automise/const.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  String hint, label;
  bool showLabel;
  ValueChanged<String>? onChanged;

  GestureTapCallback? onTap;

  TapRegionCallback? onTapOutside;
  FocusNode focusNode;
  VoidCallback? onEditingComplete;
  final FormFieldValidator<dynamic>? validator;
  ValueChanged<String>? onFieldSubmitted;
  TextEditingController controller;
  ValueChanged<String?>? onSaved;
  AppTextField(
      {Key? key,
      required this.controller,
      required this.focusNode,
      required this.hint,
      required this.label,
      this.showLabel = false,
      this.onTap,
      this.onFieldSubmitted,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.onTapOutside,
      this.onEditingComplete})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.showLabel = true;
      },
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        focusNode: widget.focusNode,
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
            hintText: widget.hint,
            floatingLabelStyle: const TextStyle(color: secondaryColor),
            label: Text(widget.label)),
        onTapOutside: widget.onTapOutside,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
      ),
    );
  }
}

class AppTextFieldWithIcon extends StatefulWidget {
  String hint, label;
  bool showLabel;
  ValueChanged<String>? onChanged;

  GestureTapCallback? onTap;

  TapRegionCallback? onTapOutside;

  VoidCallback? onEditingComplete;

  ValueChanged<String>? onFieldSubmitted;
  TextEditingController controller;
  ValueChanged<String?>? onSaved;
  FocusNode focusNode;
  AppTextFieldWithIcon(
      {Key? key,
      required this.controller,
      required this.hint,
      required this.label,
      required this.focusNode,
      this.showLabel = false,
      this.onTap,
      this.onFieldSubmitted,
      this.onChanged,
      this.onSaved,
      this.onTapOutside,
      this.onEditingComplete})
      : super(key: key);

  @override
  State<AppTextFieldWithIcon> createState() => _AppTextFieldWithIconState();
}

class _AppTextFieldWithIconState extends State<AppTextFieldWithIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.showLabel = true;
      },
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
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
            hintText: widget.hint,
            suffixIcon: const Icon(Icons.visibility_outlined),
            label: Text(widget.label)),
        onTapOutside: widget.onTapOutside,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
      ),
    );
  }
}

class AppTextFieldWithIcon2 extends StatefulWidget {
  String hint, label;
  bool showLabel;
  ValueChanged<String>? onChanged;

  GestureTapCallback? onTap;
  GestureTapCallback? onTapicon;
  TapRegionCallback? onTapOutside;

  VoidCallback? onEditingComplete;

  ValueChanged<String>? onFieldSubmitted;
  TextEditingController controller;
  ValueChanged<String?>? onSaved;
  FocusNode focusNode;
  IconData icon;
  final FormFieldValidator<dynamic>? validator;
  AppTextFieldWithIcon2(
      {Key? key,
      required this.controller,
      required this.icon,
      required this.hint,
      required this.label,
      required this.focusNode,
      this.showLabel = false,
      this.onTap,
      this.onTapicon,
      this.onFieldSubmitted,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.onTapOutside,
      this.onEditingComplete})
      : super(key: key);

  @override
  State<AppTextFieldWithIcon2> createState() => _AppTextFieldWithIcon2State();
}

class _AppTextFieldWithIcon2State extends State<AppTextFieldWithIcon2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.showLabel = true;
      },
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        focusNode: widget.focusNode,
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
            hintText: widget.hint,
            suffixIcon:
                InkWell(onTap: widget.onTapicon, child: Icon(widget.icon)),
            floatingLabelStyle: const TextStyle(color: secondaryColor),
            label: Text(
              widget.label,
              style: const TextStyle(color: Colors.grey),
            )),
        onTapOutside: widget.onTapOutside,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
      ),
    );
  }
}
