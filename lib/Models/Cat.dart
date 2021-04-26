import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cat {
  final String id;
  final String title;
  final Color color;

  const Cat({
    @required this.id,
    @required this.title,
    this.color,
  });
}
