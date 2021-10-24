part of 'widgets_barrel.dart';

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
      body: const _TripCard(),
    );
  }
}
