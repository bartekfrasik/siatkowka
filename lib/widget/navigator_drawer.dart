import 'package:flutter/material.dart';
import 'package:siatkowka/page/akcesoria.dart';

class NavigatorDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Akcesoria',
              icon: Icons.business_center,
              onCliked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Drużyny',
              icon: Icons.people,
              onCliked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Legendy',
              icon: Icons.assignment_late,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Ligi',
              icon: Icons.beenhere,
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Media',
              icon: Icons.account_tree_outlined,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Powiadomienia',
              icon: Icons.notification_add_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onCliked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onCliked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AkcesoriaPage(),
        ));
        break;
    }
  }
}
