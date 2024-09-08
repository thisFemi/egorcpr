import 'package:egorcpr/core/configs/network_check.dart';
import 'package:egorcpr/core/providers/drawer_provider.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:connectivity_bloc/connectivity_bloc.dart';

class EgorCprSite extends StatelessWidget {
  EgorCprSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ConnectivityBloc>(create: (context) => ConnectivityBloc()),
        ],
        child: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => DrawerProvider()),
              ChangeNotifierProvider(create: (context) => ScrollProvider()),
            ],
            child: ResponsiveSizer(builder: (context, orientation, deviceType) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Egor CPR Site',
                initialRoute: "/",
                routes: {"/": (context) => NChecking()},
              );
            })));
  }
}
