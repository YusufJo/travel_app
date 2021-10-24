import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category_model.dart';

class CategoryTripsScreen extends StatelessWidget {
  final CategoryModel model;
  const CategoryTripsScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          model.title,
        ),
      ),
    );
  }
}
