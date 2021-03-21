import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_architecture/core/router/app_router.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_bloc.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_event.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_state.dart';

class SplashScreen extends StatelessWidget {
  SplashBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<SplashBloc>(context);
    bloc.add(CheckUserLoggedIn());
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (ctx, state) {
        if (state is SplashSuccess) {}
      },
      builder: (ctx, state) {
        if (state is SplashSuccess) {
          BlocProvider.of<SplashBloc>(context).add(FetchData());
          return Scaffold(
            body: Container(
              child: Center(
                child: Container(child: Text("hello")),
              ),
            ),
          );
        } else if (state is FetchDataSuccessfull) {
          return Scaffold(
            body: Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: Container(
                  child: Text(
                    state.quote.contents.quotes[0].quote +
                        "\n by \n" +
                        state.quote.contents.quotes[0].author,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          );
        } else if (state is SplashLoading) {
          return Scaffold(
            body: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (state is SplashError) {
          return Scaffold(
            body: Container(
              child: Center(
                child: Container(child: Text("Oops Error")),
              ),
            ),
          );
        }
        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
