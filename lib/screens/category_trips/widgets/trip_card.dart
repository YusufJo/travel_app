part of '../widgets_barrel.dart';

class _TripCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Season season;
  final TripType tripType;
  final VoidCallback onTap;
  const _TripCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            12,
          ),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  _TripCardImageHelper(imageUrl: imageUrl),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: _TripCardTitleHelper(title: title),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    iconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _TripCardDurationHelper(
                        duration: duration,
                      ),
                      _TripCardSeasonHelper(
                        season: season,
                      ),
                      _TripCardTripTypeHelper(tripType: tripType),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TripCardTripTypeHelper extends StatelessWidget {
  final TripType tripType;
  const _TripCardTripTypeHelper({Key? key, required this.tripType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.family_restroom),
        const SizedBox(
          width: 5,
        ),
        Text(tripTypeInArabic),
      ],
    );
  }

  String get tripTypeInArabic {
    switch (tripType) {
      case TripType.activities:
        return 'انشطه';
      case TripType.exploration:
        return 'استكشاف';
      case TripType.recovery:
        return 'تعافي';
      case TripType.therapy:
        return 'علاج';
      default:
        return '';
    }
  }
}

class _TripCardSeasonHelper extends StatelessWidget {
  final Season season;
  const _TripCardSeasonHelper({Key? key, required this.season})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(seasonIcon),
        const SizedBox(
          width: 5,
        ),
        Text(seasonInArabic),
      ],
    );
  }

  String get seasonInArabic {
    switch (season) {
      case Season.autumn:
        return 'الخريف';
      case Season.spring:
        return 'الربيع';
      case Season.summer:
        return 'الصيف';
      case Season.winter:
        return 'الشتاء';
      default:
        return '';
    }
  }

  IconData get seasonIcon {
    switch (season) {
      case Season.autumn:
        return Icons.fireplace;
      case Season.spring:
        return Icons.emoji_nature;
      case Season.summer:
        return Icons.wb_sunny;
      case Season.winter:
        return Icons.ac_unit;
      default:
        return Icons.error;
    }
  }
}

class _TripCardDurationHelper extends StatelessWidget {
  final int duration;
  const _TripCardDurationHelper({Key? key, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.today,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('$duration ايام')
      ],
    );
  }
}

class _TripCardImageHelper extends StatelessWidget {
  const _TripCardImageHelper({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Colors.black.withOpacity(0.8), Colors.transparent],
        stops: const [
          0,
          0.3,
        ],
      ).createShader(bounds),
      blendMode: BlendMode.srcATop,
      child: Image.network(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _TripCardTitleHelper extends StatelessWidget {
  const _TripCardTitleHelper({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
    );
  }
}
