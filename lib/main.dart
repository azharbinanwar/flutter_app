import 'package:flutter/material.dart';
import 'package:flutter_app/animation/simple_animation_page.dart';
import 'package:flutter_app/bloc_and_generic/helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Handler<int>(0)),
        BlocProvider(create: (context) => Handler<num>(0)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // home: MainPage(),
        // home: MainPage(),
        // home: CarouselPage(),
        home: SimpleAnimationPage(),
        // home: AppbarPage(),
      ),
    );
  }
}
