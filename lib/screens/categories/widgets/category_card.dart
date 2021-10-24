part of '../widgets_barrel.dart';

class _CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  const _CategoryCard(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          _CategoryCardImage(
            imageUrl: imageUrl,
          ),
          _CategoryCardTitle(title: title),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
            ),
          )
        ],
      ),
    );
  }
}

class _CategoryCardImage extends StatelessWidget {
  final String imageUrl;
  const _CategoryCardImage({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
            colorFilter: const ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            )),
      ),
    );
  }
}

class _CategoryCardTitle extends StatelessWidget {
  final String title;
  const _CategoryCardTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
    );
  }
}
