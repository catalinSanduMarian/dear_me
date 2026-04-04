import 'package:flutter/material.dart';
import 'package:frontend_dearme/magic_scroll_history.dart';
import 'package:frontend_dearme/main.dart';

class promt_and_scrolling_widget extends StatefulWidget {
  promt_and_scrolling_widget({super.key, required this.homeState});
  final MyHomePageState homeState;
  @override
  State<promt_and_scrolling_widget> createState() =>
      _promt_and_scrolling_widget_state();
}

class _promt_and_scrolling_widget_state
    extends State<promt_and_scrolling_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 50,
          child: Center(
            child: cute_promt(text_to_print: widget.homeState.text_to_print),
          ),
        ),
        Divider(color: Colors.red),
        Expanded(
          flex: 50,
          child: Center(child: magic_scroll_history(to_show: "te pupa cata")),
        ),
      ],
    );
  }
}


// il fac mult mai mare decat e acum, ?
//calculez size-ul in functie de cat text e?

class cute_promt extends StatelessWidget {
  const cute_promt({
    super.key,
    required this.text_to_print,
  });

  final String text_to_print;

  @override
  Widget build(BuildContext context) {
    return Text(
      text_to_print,
      style: TextStyle(color: Colors.black, fontSize: 40.0),
    );
  }
}
