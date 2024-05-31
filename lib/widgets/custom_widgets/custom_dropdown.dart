import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          label: const Text("Track"),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: 'Track',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffBDBDBD),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kColor),
          ),
        ),
        items: const [
          DropdownMenuItem(
            child: Text('UI UX'),
            value: 'UIUX',
          ),
          DropdownMenuItem(
            child: Text('Flutter'),
            value: 'Flutter',
          ),
          DropdownMenuItem(
            child: Text('Frontend'),
            value: 'Frontend',
          ),
          DropdownMenuItem(
            child: Text('Backend'),
            value: 'Backend',
          ),
        ],
        onChanged: (String? value) {},
      ),
    );
  }
}
