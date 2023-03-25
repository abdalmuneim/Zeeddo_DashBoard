import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final String hint;
  final void Function(T?)? onChanged;
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint = "Select item",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 53,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: .5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(hint),
          iconSize: 0.0,
          value: value,
          items: items
              .map<DropdownMenuItem<T>>((T e) => DropdownMenuItem<T>(
                    value: e,
                    child: Text(e.toString()),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
