import 'package:bloc_api_sample/facts_screen.dart';
import 'package:bloc_api_sample/facts_screen/bloc/facts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MultiBlocListener(listeners: [
    BlocProvider(create: (context) => FactsBloc()..add(FetchData()),)
  ],
   child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FactsScreen(

      ),
    );
  }
}