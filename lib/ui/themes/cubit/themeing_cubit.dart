import 'package:bloc/bloc.dart';
import 'package:multi_theme_app/ui/themes/app_themes.dart';

part 'themeing_state.dart';

class ThemeingCubit extends Cubit<ThemeingState> {
  ThemeingCubit() : super(ThemeingState(theme: Themes.dark));
  changeTheme(Themes theme) => emit(ThemeingState(theme: theme));
}
