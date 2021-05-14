import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/ui/pages/prefrances_page.dart';
import 'package:multi_theme_app/ui/themes/app_themes.dart';
import 'package:multi_theme_app/ui/themes/cubit/themeing_cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PrefrancesPage(),
                ),
              );
            },
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
        title: Text('home page'),
      ),
      body: Center(
        child: BlocBuilder<ThemeingCubit, ThemeingState>(
          builder: (context, ThemeingState state) {
            var theme = state.theme == Themes.dark ? 'dark' : 'light';

            return Text('theme is $theme');
          },
        ),
      ),
    );
  }
}
