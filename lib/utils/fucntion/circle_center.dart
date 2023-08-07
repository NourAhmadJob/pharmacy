import 'package:flutter/material.dart';

void loadingCenter({
  required context ,
}) => showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
