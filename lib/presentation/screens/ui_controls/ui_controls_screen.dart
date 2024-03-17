import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI controls + Tiles"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarin }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTrasportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTrasportation'),
          children: [
            RadioListTile(
              value: Transportation.car,
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.car;
              }),
            ),
            RadioListTile(
              value: Transportation.plane,
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avion'),
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              value: Transportation.boat,
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              value: Transportation.submarin,
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.submarin;
              }),
            ),
          ],
        ),
        CheckboxListTile(
            title: const Text('¿Desayuno?'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            title: const Text('¿Almuerzo?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text('¿Cena?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
