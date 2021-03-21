import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' as widget;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/base_colors/colors.dart';
import 'core/router/app_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(widget.BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    EquatableConfig.stringify = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: CustomColors.green,
          accentColor: CustomColors.green,
          cupertinoOverrideTheme: CupertinoThemeData(
            primaryColor: CustomColors.green,
          ),
          highlightColor: CustomColors.green.withOpacity(0.3),
          splashColor: CustomColors.green.withOpacity(0.3),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  overlayColor: MaterialStateProperty.all(
                      CustomColors.green.withOpacity(0.3)))),
          textSelectionTheme:
              TextSelectionThemeData(cursorColor: CustomColors.green),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(color: CustomColors.greyDarker),
          )),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
