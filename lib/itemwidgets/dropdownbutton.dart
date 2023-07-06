import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  String? existingValue;
  final double wid;
  final double hig;
  final double size;
  CustomDropdownButton({
    super.key,
    required this.items,
    required this.existingValue,
    required this.wid,
    required this.hig,
    required this.size,
  });

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.hig,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          items: widget.items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: widget.size,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: widget.existingValue,
          onChanged: (String? value) {
            setState(() {
              widget.existingValue = value!;
            });
          },
          buttonStyleData: ButtonStyleData(
            width: widget.wid,
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8,
              ),
              border: Border.all(
                color: Colors.black,
              ),
              color: Colors.white,
            ),
            elevation: 2,
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
            ),
            iconSize: 20,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            offset: const Offset(
              -20,
              0,
            ),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all<double>(6),
              thumbVisibility: MaterialStateProperty.all<bool>(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
