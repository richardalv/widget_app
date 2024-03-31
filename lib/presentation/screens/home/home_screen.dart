import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
// import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
// import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: const Text("Flutter y Material 3"),
        // centerTitle: true,
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldkey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
        leading: Icon(
          menuItem.icon,
          color: colors.primary,
        ),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: colors.primary,
        ),
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const ButtonScreen(),
          // ));
          context.push(menuItem.link);
          // context.pushNamed(CardsScreen.name);
        });
  }
}
