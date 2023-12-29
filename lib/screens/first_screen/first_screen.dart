import 'package:bloc_cubit_samples/screens/first_screen/counter_cubit.dart';
import 'package:bloc_cubit_samples/screens/first_screen/next_screen.dart';
import 'package:bloc_cubit_samples/utils/custom_navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Cubit"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(heroTag: "decrement",onPressed: () {
                BlocProvider.of<CounterCubit>(context).decrement();
                // context.bloc<CounterCubit().decrement();
              },
                child: Icon(Icons.remove),),
              SizedBox(width: 20,),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(state.counterValue.toString(), style: TextStyle(color: Colors.black, fontSize: 16),);
                },
              ),
              SizedBox(width: 20,),
              FloatingActionButton(heroTag: "increment",onPressed: () {
                BlocProvider.of<CounterCubit>(context).increment();
                // context.bloc<CounterCubit().decrement();
              },
                child: Icon(Icons.add),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(LeftToRightRoute(
              page: NextScreen(),
            ));
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextScreen()));
          }, child: Text("next screen"),),
        ],
      ),
    );
  }
}
