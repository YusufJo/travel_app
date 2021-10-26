part of 'widgets_barrel.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _CategoriesScreenAppBar(),
      body: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) => InharitedRouteWidget(
          route: CategoryTripsScreenRoute(categoryModel: categories[index]),
          child: _CategoryCard(
            title: categories[index].title,
            imageUrl: categories[index].imageUrl,
          ),
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
