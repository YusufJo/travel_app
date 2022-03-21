// todo: move to pages directory
// todo: change file and class name from screen to page

part of 'widgets_barrel.dart';

class CategoryTripsScreen extends StatelessWidget {
  final CategoryEntity categoryEntity;

  const CategoryTripsScreen({Key? key, required this.categoryEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tripsRepository = GetIt.I.get<TripsRepositoryContract>();

    return Scaffold(
      appBar: _AppBar(
        title: categoryEntity.title,
      ),
      body: FutureBuilder<List<TripEntity>>(
        future: tripsRepository.getTrips(categoryId: categoryEntity.id),
        builder: (_, snapshot) => snapshot.hasData
            ? ListView.builder(
                padding: const EdgeInsets.all(5),
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final entity = snapshot.data![index];
                  return InheritedRouteWidget(
                    route: TripDetailsScreenRoute(title: entity.title),
                    child: _TripCard(
                      title: entity.title,
                      imageUrl: entity.imageUrl,
                      duration: entity.duration,
                      season: entity.season,
                      tripType: entity.tripType,
                    ),
                  );
                },
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
