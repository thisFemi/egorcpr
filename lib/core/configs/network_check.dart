import 'package:egorcpr/app/sections/main/main_section.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:connectivity_bloc/connectivity_bloc.dart';

class NChecking extends StatelessWidget {
  NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectivityBloc, ConnectivityState>(
        listener: (context, state) {},
        builder: (context, state) {
          final scrollProvider = Provider.of<ScrollProvider>(context);
          if (state is ConnectivitySuccessState) {
            return MainPage(
              scrollProvider: scrollProvider,
            );
          } else {
            return MainPage(
              scrollProvider: scrollProvider,
            );
          }
          //  return Container();
        });
  }
}

class NoConnnectionError extends StatelessWidget {
  const NoConnnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Connection failed")],
    )));
  }
}
