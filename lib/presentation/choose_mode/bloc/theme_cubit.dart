import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {

  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // Kaydedilen veriyi (index numarasını) okur ve ThemeMode'a çevirir
    try {
      return ThemeMode.values[json['theme'] as int];
    } catch (_) {
      // Hata olursa varsayılan olarak sistemi kullan
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // Mevcut ThemeMode'un index numarasını (0, 1 veya 2) kaydeder
    return {'theme': state.index};
  }
}