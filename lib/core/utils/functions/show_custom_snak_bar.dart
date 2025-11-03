import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

void showCustomSnakBar(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
