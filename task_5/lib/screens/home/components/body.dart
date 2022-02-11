import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/provider/color_provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ColorProvider _state = Provider.of<ColorProvider>(context);
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 200,
              height: 200,
              duration: Duration(milliseconds: 50),
              color: _state.giveColorAnimatedContainer,
            ),
            Switch(
              value: _state.giveStateColor,
              onChanged: (_) => _state.setColor(),
            )
          ],
        ),
      ),
    );
  }
}
