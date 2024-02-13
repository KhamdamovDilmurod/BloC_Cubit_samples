import 'package:bloc_cubit_samples/utils/colors.dart';
import 'package:flutter/material.dart';

class TextfieldsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextfieldsScreenState();
  }
}

class TextfieldsScreenState extends State<TextfieldsScreen> {
  bool _isObscure = true;
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFields"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  hintText: 'Sabab',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: COLOR_PRIMARY),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: COLOR_PRIMARY),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  focusColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: COLOR_PRIMARY),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: COLOR_PRIMARY),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
