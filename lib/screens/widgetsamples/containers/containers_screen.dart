import 'package:bloc_cubit_samples/utils/colors.dart';
import 'package:flutter/material.dart';

class ContainersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContainersScreenState();
  }
}

class ContainersScreenState extends State<ContainersScreen> {

  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.lightGreenAccent,
              child: Text("simple container"),
            ),
            SizedBox(
              height: 12,
            ),
            // give two corner radius
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: COLOR_GREY,
                      offset: Offset(1, 2),
                      spreadRadius: 0,
                      blurRadius: 0,
                    ),
                    BoxShadow(
                      color: COLOR_GREY,
                      offset: Offset(-2, -2),
                      spreadRadius: 0,
                      blurRadius: 0,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
