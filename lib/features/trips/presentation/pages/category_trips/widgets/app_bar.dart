part of '../widgets_barrel.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const _AppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
