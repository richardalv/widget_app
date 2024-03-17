import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: "/buttons",
      icon: Icons.smart_button),
  MenuItem(
      title: 'tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: 'progress indicator',
      subtitle: 'Generales y controlados',
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'snackbars y dialogos',
      subtitle: 'Indicadores en pantalla',
      link: "/snackbars",
      icon: Icons.info_outline),
];
