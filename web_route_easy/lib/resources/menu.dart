import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/menu_item.dart';
import 'atomic_components/custom_flat_button.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) =>
            (constraints.maxWidth > 520) ? _DesktopMenu() : _MobileMenu());
  }
}

class _DesktopMenu extends StatelessWidget {
  const _DesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuItems = MenuItemBuilder.build(context);

    return Container(
      width: double.infinity,
      child: Row(
        children: menuItems
            .map((menuItem) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomFlatButton(
                    text: menuItem.text,
                    onPressed: () {
                      final String location = context.namedLocation(
                        menuItem.route,
                      );
                      context.go(location);
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Implement small screen version
    return Container();
  }
}
