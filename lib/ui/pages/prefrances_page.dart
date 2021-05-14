import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/ui/themes/app_themes.dart';
import 'package:multi_theme_app/ui/themes/cubit/themeing_cubit.dart';

class PrefrancesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prefrances page'),
      ),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Light theme'),
              onPressed: () {
                BlocProvider.of<ThemeingCubit>(
                  context,
                ).changeTheme(
                  Themes.light,
                );
              },
            ),
            ElevatedButton(
              child: Text('Dark theme'),
              onPressed: () {
                BlocProvider.of<ThemeingCubit>(
                  context,
                ).changeTheme(
                  Themes.dark,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
