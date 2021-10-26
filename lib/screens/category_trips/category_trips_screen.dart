part of 'widgets_barrel.dart';

class CategoryTripsScreen extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryTripsScreen({Key? key, required this.categoryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredTrips = tripsData
        .where((element) => element.categories.contains(categoryModel.id))
        .toList();

    return Scaffold(
      appBar: _AppBar(
        title: categoryModel.title,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: filteredTrips.length,
        itemBuilder: (_, index) => InharitedRouteWidget(
          route: TripDetailsScreenRoute(title: filteredTrips[index].title),
          child: _TripCard(
            title: filteredTrips[index].title,
            imageUrl: filteredTrips[index].imageUrl,
            duration: filteredTrips[index].duration,
            season: filteredTrips[index].season,
            tripType: filteredTrips[index].tripType,
          ),
        ),
      ),
    );
  }
}
