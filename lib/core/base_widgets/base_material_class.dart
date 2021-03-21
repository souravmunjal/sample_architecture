import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final bool isCenterTitle;
  final Widget body;
  final bool resizeToAvoidBottomInset;
  BaseScaffold(
      {@required this.title,
      @required this.isCenterTitle,
      @required this.body,
      this.resizeToAvoidBottomInset});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardAvoider(child: body),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.lightGreen,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
