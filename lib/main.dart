import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/ui/pages/home_page.dart';
import 'package:multi_theme_app/ui/themes/app_themes.dart';
import 'package:multi_theme_app/ui/themes/cubit/themeing_cubit.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeingCubit(),
      child: BlocBuilder<ThemeingCubit, ThemeingState>(
        builder: (context, ThemeingState state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'mulli themes app',
            theme: themes[state.theme],
            home: HomePage(),
          );
        },
      ),
    );
  }
}
