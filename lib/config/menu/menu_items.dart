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
      title: 'Riverpod counter',
      subtitle: 'Contador usando riverpod',
      link: "/riverpod",
      icon: Icons.countertops),
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
  MenuItem(
      title: 'Animated container',
      subtitle: 'Contenedor animado',
      link: "/animated",
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Controles UI',
      link: "/ui-controls",
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Tutorial para la aplicacion',
      link: "/tutorial",
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite Scroll',
      subtitle: 'Pantalla de scroll infinito',
      link: "/infinite",
      icon: Icons.list_alt),
  MenuItem(
      title: 'Theme changer',
      subtitle: 'Cambiador de temas',
      link: "/theme-changer",
      icon: Icons.color_lens_outlined),
];
