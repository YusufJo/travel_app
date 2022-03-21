part of './widgets_barrel.dart';

class TripDetailsScreen extends StatelessWidget {
  final String title;
  const TripDetailsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(
        title: title,
      ),
    );
  }
}
