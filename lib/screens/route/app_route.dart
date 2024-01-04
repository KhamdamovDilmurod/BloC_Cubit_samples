import 'package:bloc_cubit_samples/screens/connectivity_screen/connectivity_screen.dart';
import 'package:bloc_cubit_samples/screens/first_screen/first_screen.dart';
import 'package:bloc_cubit_samples/screens/main_screen.dart';
import 'package:bloc_cubit_samples/utils/custom_navigations.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final Object? key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MainScreen(),
        );
      case '/first':
        return LeftToRightRoute(
          page: FirstScreen(),
        );
      case '/connectivity':
        return LeftToRightRoute(
          page: ConnectivityScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error: Page not found!'),
        ),
      );
    });
  }
}
