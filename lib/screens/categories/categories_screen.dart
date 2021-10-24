import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/repo/categories_data.dart';
import 'package:travel_app/route/router.gr.dart';
import 'categories_widgets_barrel.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CategoriesScreenAppBar(),
      body: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) => CategoryCard(
          onTap: () => context.pushRoute(CategoryTripsScreenRoute(
            model: categories[index],
          )),
          title: categories[index].title,
          imageUrl: categories[index].imageUrl,
        ),
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
        ),
      ),
    );
  }
}
