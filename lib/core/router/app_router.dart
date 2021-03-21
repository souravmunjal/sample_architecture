import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import 'package:sample_architecture/feature/splash/bloc/splash_bloc.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_state.dart';
import 'package:sample_architecture/feature/splash/data/datasource/client.dart';
import 'package:sample_architecture/feature/splash/data/repositories/splash_repository.dart';
import 'package:sample_architecture/feature/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
          type: PageTransitionType.fade,
          settings: settings,
          child: BlocProvider(
              create: (context) => SplashBloc(SplashIdle(),
                  SplashRepository(QuoteApiClient(httpClient: http.Client()))),
              child: SplashScreen()),
        );

      default:
        return null;
    }
  }
}

class Routes {
  static const String AUTH_SCREEN = "/auth_screen";
  static const String LOGIN = "/login";
  static const String SIGN_UP = "/sign_up";
  static const String ADD_PROPERTY_START_SCREEN = "/add_property_start_screen";
  static const String ADD_PROPERTY_SCREEN = "/add_property_screen";
  static const String MAIN_SCREEN = '/main_screen';
  static const String PROFILE_SCREEN = '/profile_screen';
  static const String NEW_BOOKING_CALENDAR_SCREEN =
      '/new_booking_calendar_screen';
  static const String DATE_INTERVAL_CALENDAR_SCREEN =
      '/date_interval_calendar_screen';
  static const String NEW_MAINTENANCE_REQUEST_SCREEN =
      "/new_maintenance_request_screen";
  static const String MAINTENANCE_REQUEST_DETAILS_SCREEN =
      "/maintenance_request_details_screen";
  static const String CHAT_SCREEN = "/chat_screen";
  static const String EDIT_BASICS_DETAILS_SCREEN = "/edit_basic_details_screen";
  static const String PROPERTIES_SCREEN = "/properties_screen";
  static const String PROPERTY_DETAILS_SCREEN = "/property_details_screen";
  static const String VIEW_PROPERTY_REQUESTS_SCREEN =
      "/property_request_screen";
  static const String ON_BOARDING_SCREEN = "/on_boarding_screen";
  static const String PROPERTY_REQUEST = "/property_request";
  static const String SUBSCRIPTIONS_SCREEN = "/expenses_summary_screen";
  static const String PAYMENT_HISTORY_SCREEN = "/payment_history_screen";
  static const String SUMMARY_SCREEN = "/summary_screen";
  static const String EXPENSE_ITEM_DETAILS_INVOICE_SCREEN =
      "/expense_item_detail_invoice_screen";
  static const String EXPENSE_ITEM_SUBSCRIPTION_DETAILS_INVOICE_SCREEN =
      "/expense_item_detail_subscription_invoice_screen";
  static const String GALLERY = "/gallery";
}
