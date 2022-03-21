// todo: change file and class name from screen to page
part of 'widgets_barrel.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesRepository = GetIt.I.get<CategoriesRepositoryContract>();
    return Scaffold(
      appBar: const _CategoriesScreenAppBar(),
      body: FutureBuilder<List<CategoryEntity>>(
        future: categoriesRepository.categories,
        builder: (_, snapShot) => snapShot.hasData
            ? GridView.builder(
                itemCount: snapShot.data!.length,
                itemBuilder: (_, index) {
                  final entity = snapShot.data![index];
                  return InheritedRouteWidget(
                    route: CategoryTripsScreenRoute(categoryEntity: entity),
                    child: _CategoryCard(
                      title: entity.title,
                      imageUrl: entity.imageUrl,
                    ),
                  );
                },
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 7 / 8,
                ),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
