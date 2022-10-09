import 'package:flutter/material.dart';
import 'package:mercado_libre/widgets/custom_list.dart';

import '../widgets/drawer_custom.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, (route) => route.isFirst);
        return true;
      },
      child: Scaffold(
        drawer: const DrawerCustom(
          estasEnProfile: true,
        ),
        appBar: AppBar(
          title: const Text('Mi Cuenta'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            Text('Compras'),
            CustomList(icon: Icons.mail, title: 'Preguntas'),
            CustomList(icon: Icons.shopping_bag, title: 'Mis compras'),
            Divider(),
            Text('Ventas'),
            CustomList(icon: Icons.list, title: 'Resumen'),
            CustomList(icon: Icons.audiotrack, title: 'Novedades'),
            CustomList(icon: Icons.label, title: 'Publicaciones'),
            CustomList(icon: Icons.analytics, title: 'Publicidad'),
            CustomList(icon: Icons.message, title: 'Preguntas'),
            CustomList(icon: Icons.store, title: 'Ventas'),
            CustomList(icon: Icons.punch_clock, title: 'Reputación'),
            Divider(),
            Text('Facturación'),
            CustomList(icon: Icons.note, title: 'Facturación'),
            Divider(),
            Text('Configuración'),
            CustomList(
                color: Colors.grey, icon: Icons.person, title: 'Mis datos'),
            CustomList(
                color: Colors.grey, icon: Icons.security, title: 'Seguridad'),
            CustomList(
                color: Colors.grey,
                icon: Icons.privacy_tip,
                title: 'Privacidad'),
            CustomList(
                color: Colors.grey, icon: Icons.mail, title: 'Comunicaciones'),
            CustomList(
                color: Colors.grey,
                icon: Icons.settings,
                title: 'Configuración'),
            CustomList(
                color: Colors.grey, icon: Icons.question_mark, title: 'Ayuda'),
                Divider(),
                CustomList(
                color: Colors.grey, icon: Icons.person, title: 'Pedro'),
                ListTile(
                  title: Text('Pedro@gmail.com'),
                  trailing: Icon(Icons.power_off),
                ),
          ],
        ),
      ),
    );
  }
}
