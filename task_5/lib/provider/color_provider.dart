import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  bool _stateColor = false;

  Color _colorText =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];
  Color get giveColorText => _colorText;

  Color _colorAnimatedContainer =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];
  Color get giveColorAnimatedContainer => _colorAnimatedContainer;

  bool get giveStateColor => _stateColor;

  void setColor() {
    _colorText = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    _colorAnimatedContainer =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];
    _stateColor = !_stateColor;
    notifyListeners();
  }
}
