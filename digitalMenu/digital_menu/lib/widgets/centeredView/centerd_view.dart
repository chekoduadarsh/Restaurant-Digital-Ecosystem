import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget? child;
  const CenteredView({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      alignment: Alignment.topCenter,
      child: child,
      /*ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),*/
    );
  }
}
