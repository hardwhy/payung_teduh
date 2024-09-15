import 'package:flutter/material.dart';

Future<T?> showSheet<T>(
  context, {
  bool? isScrollControlled,
  Widget? child,
  Color? backgroundColor,
  EdgeInsets? contentPadding,
}) {
  return showModalBottomSheet<T>(
    context: context,
    backgroundColor: backgroundColor ?? Colors.deepPurple[50],
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    isScrollControlled: isScrollControlled ?? false,
    constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - (kToolbarHeight)),
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SafeArea(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: Container(
              padding: contentPadding,
              color: backgroundColor ?? Colors.deepPurple[50],
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(60),
                    ),
                    width: 60,
                    height: 6,
                  ),
                  if (child != null) Flexible(child: child),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
