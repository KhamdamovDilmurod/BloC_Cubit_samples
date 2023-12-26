import 'package:bloc_cubit_samples/screens/first_screen/first_screen.dart';
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
                    Navigator.of(context).push(FadeRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("counter cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(LeftToRightRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(RightToLeftRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideDownRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideUpRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideTopRightRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("6-cubit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideBottomRightRoute(
                      page: FirstScreen(),
                    ));
                  },
                  child: Text("7-cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
              ElevatedButton(onPressed: () {}, child: Text("cubit")),
            ],
          ),
        ),
      ),
    );
  }
}
