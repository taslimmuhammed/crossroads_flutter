import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  final _list = ['Apple', 'Orange', 'Pine Apple'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
            onChanged: (val) {
              print(val);
            },
            hint: const Text("Select Items"),
            items: _list.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,//THIS VALUE IS PRINTED WHILE ONCHANGE
              );
            }).toList()),
      ),
    );
  }
}
