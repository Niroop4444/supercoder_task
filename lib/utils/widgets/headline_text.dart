import 'package:flutter/material.dart';

Widget headlineText(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
  );
}