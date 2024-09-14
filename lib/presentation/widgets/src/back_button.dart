import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class Back extends StatelessWidget {
  final VoidCallback? onTap;
  const Back({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Ripplify(
      onTap: onTap ?? () => Navigator.pop(context),
      child: const Icon(
        Icons.arrow_back,
        color: Colors.deepPurple,
      ),
    );
  }
}
