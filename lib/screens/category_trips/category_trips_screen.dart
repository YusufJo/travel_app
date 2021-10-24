import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category_model.dart';

class CategoryTripsScreen extends StatelessWidget {
  const CategoryTripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryModel categoryModel =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryModel.title,
        ),
      ),
    );
  }
}
