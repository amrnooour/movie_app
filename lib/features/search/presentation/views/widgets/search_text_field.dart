import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  const SearchTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildOutlineborder(),
        enabledBorder: buildOutlineborder(),
        focusedBorder: buildOutlineborder(),
        errorBorder: buildOutlineborder(),
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.grey.withOpacity(.5),
        filled: true,
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: onChanged,
    );
  }

  buildOutlineborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
