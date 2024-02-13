import 'package:bloc_cubit_samples/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return ButtonsScreenState();
  }
  
}
class ButtonsScreenState extends State<ButtonsScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("buttons"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(COLOR_PRIMARY),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('Yuborish',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    )),
                onPressed: () {
                }),
          ],
        ),
      ),
    );
  }
  
}