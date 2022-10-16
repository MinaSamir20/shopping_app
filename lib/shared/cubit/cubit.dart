import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/shared/cubit/state.dart';

import '../network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(InitState());

  static AppCubit get(context) => BlocProvider.of(context);


  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(ChangeThemModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(ChangeThemModeState());
      });
    }
  }
}