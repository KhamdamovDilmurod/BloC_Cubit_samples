import 'package:bloc_cubit_samples/cubit/internet_cubit.dart';
import 'package:bloc_cubit_samples/cubit/internet_monitor_cubit.dart';
import 'package:bloc_cubit_samples/screens/first_screen/counter_cubit.dart';
import 'package:bloc_cubit_samples/screens/main_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(connectivity: Connectivity(),));
}

class MyApp extends StatelessWidget {
  final Connectivity connectivity;
  const MyApp({super.key, required this.connectivity});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (BuildContext context) => CounterCubit(),
        ),
        BlocProvider<InternetCubit>(
          create: (BuildContext context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<InternetMonitorCubit>(
          create: (BuildContext context) => InternetMonitorCubit(internetCubit: context.read<InternetCubit>()),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MainScreen(),
      ),
    );
  }
}
