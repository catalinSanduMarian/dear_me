import 'package:flutter/material.dart';
import 'package:frontend_dearme/main.dart';
import 'package:intl/intl.dart';

class appbar_home_screen extends StatefulWidget implements PreferredSizeWidget {
  const appbar_home_screen({super.key, required this.widget});

  final MyHomePage widget;




  @override
  State<appbar_home_screen> createState() => _appbar_home_screenState();

  @override
  Size get preferredSize => Size.fromHeight(80.0);
}

class _appbar_home_screenState extends State<appbar_home_screen> {

  String date_text = DateFormat.MMMMd().format(DateTime.now());
  late List<Widget> widget_list= <Widget>[
    Text(
      date_text,
      style: TextStyle(
        color:Color.fromARGB(169, 227, 8, 8),
        fontSize: 15,
        )
        
      ),
    ];





  @override
  Widget build(BuildContext context) {
    return AppBar(
      // TRY THIS: Try changing the color here to a specific color (to
      // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      // change color while the other colors stay the same.
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Column(
        children: widget_list,
      ), 
    );
  }



}
