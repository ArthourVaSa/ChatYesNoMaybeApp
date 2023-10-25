import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColorTheme;

  AppTheme({required this.selectedColorTheme})
      : assert(
            selectedColorTheme >= 0 && selectedColorTheme < _colorThemes.length,
            "Colors theme must be between 0 and ${_colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _colorThemes[selectedColorTheme],
      ),
      useMaterial3: true,
    );
  }
}
