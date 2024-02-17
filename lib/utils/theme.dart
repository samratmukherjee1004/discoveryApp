// ignore_for_file: prefer_final_fields

import 'package:discovery_app/helper/base_screen_view.dart';
import 'package:discovery_app/helper/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeProvider(ref: ref));

class ThemeProvider extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ThemeProvider({required this.ref}) : super();

  /// DATA MEMBERS
  Color _bgColor = Colors.white;
  Color _textColor = Colors.black;
  Color _dividerColor = Colors.grey[200]!;
  bool _darkTheme = false;

  /// GETTERS
  Color get bgColor => _bgColor;
  Color get textColor => _textColor;
  Color get dividerColor => _dividerColor;
  bool get darkTheme => _darkTheme;

  /// SETTERS


  /// OTHER METHODS
  void toggleTheme() {
    if(_darkTheme) {
      _bgColor = Colors.white;
      _textColor = Colors.black;
      _dividerColor = Colors.grey[200]!;
      _darkTheme = false;
    } else {
      _bgColor = Colors.grey[900]!;
      _textColor = Colors.white;
      _dividerColor = Colors.grey[700]!;
      _darkTheme = true;
    }
    notifyListeners();
  }
}