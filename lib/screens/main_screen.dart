import 'package:bloc_cubit_samples/screens/connectivity_screen/connectivity_screen.dart';
import 'package:bloc_cubit_samples/screens/first_screen/first_screen.dart';
import 'package:bloc_cubit_samples/screens/widgetsamples/buttons/buttons_screen.dart';
import 'package:bloc_cubit_samples/screens/widgetsamples/containers/containers_screen.dart';
import 'package:bloc_cubit_samples/screens/widgetsamples/textfields/textfields_screen.dart';
import 'package:bloc_cubit_samples/utils/custom_navigations.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Samples"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(
                    //   '/first',
                    // );
                    Navigator.of(context).push(FadeRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("counter cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(LeftToRightRoute(
                      page: ConnectivityScreen(),
                    ));
                    // Navigator.of(context).pushNamed(
                    //   '/connectivity',
                    // );
                  },
                  child: Text("Connectivitty")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(RightToLeftRoute(
                      page: ContainersScreen(),
                    ));
                  },
                  child: Text("containers")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideDownRoute(
                      page: ButtonsScreen(),
                    ));
                  },
                  child: Text("buttons")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideUpRoute(
                      page: TextfieldsScreen(),
                    ));
                  },
                  child: Text("textfields")),
            ],
          ),
        ),
      ),
    );
  }
}
