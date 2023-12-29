import 'package:bloc_cubit_samples/screens/first_screen/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NextScreenState();
  }
  
}
class NextScreenState extends State<NextScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Next screen"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(builder: (context,state){
          return Text(state.counterValue.toString(), style: TextStyle(color: Colors.black, fontSize: 16),);
        }),
      ),
    );
  }
  
}