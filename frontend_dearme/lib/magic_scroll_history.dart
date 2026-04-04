import 'package:flutter/material.dart';

// string toshow sohuld be
class data_pack_for_history {
  String img_path="";
  String text_for_history="";
}

class magic_scroll_history extends StatefulWidget {
  const magic_scroll_history({super.key, required this.to_show});
  final String to_show;

  @override
  State<magic_scroll_history> createState() => _magic_scroll_historyState();
}

class _magic_scroll_historyState extends State<magic_scroll_history> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.to_show,
      style: TextStyle(color: Colors.black, fontSize: 40.0),
    );
  }
}
