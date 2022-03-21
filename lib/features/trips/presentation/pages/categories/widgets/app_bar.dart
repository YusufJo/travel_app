part of '../widgets_barrel.dart';

class _CategoriesScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _CategoriesScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const Text(
        'التصنيفات',
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
          splashRadius: 24,
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
