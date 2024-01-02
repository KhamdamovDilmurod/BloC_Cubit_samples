import 'package:bloc_cubit_samples/cubit/internet_cubit.dart';
import 'package:bloc_cubit_samples/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectivityScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConnectivityScreenState();
  }
}

class ConnectivityScreenState extends State<ConnectivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connectivity"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<InternetCubit, InternetState>(
                builder: (context, state) {
                  if (state is InternetConnected && state.connectionType == ConnectionType.wifi) {
                    return Text("WIFI");
                  } else if (state is InternetConnected && state.connectionType == ConnectionType.mobile) {
                    return Text("Mobile");
                  } else {
                    return const Text("Disconnected");
                  }
                },
                listener: (context, state) {}),
            SizedBox(height: 20,),
            BlocConsumer<InternetCubit, InternetState>(
              listener: (context, state) {
                if (state is InternetConnected) {
                  if (state.wasIncremented) {
                    // Handle the case where wasIncremented is true
                    // You can perform any actions or show any UI based on this condition
                    print("Internet was incremented");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Connected!'),
                        duration: Duration(milliseconds: 600),
                      ),
                    );
                  } else {
                    // Handle the case where wasIncremented is false or not set
                    print("Internet was not incremented");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Disconnected!'),
                        duration: Duration(milliseconds: 600),
                      ),
                    );
                  }
                }
              },
              builder: (context, state) {
                if (state is InternetConnected) {
                  return Text("Connected");
                } else {
                  return Text("Disconnected");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
