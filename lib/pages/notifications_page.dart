import 'package:flutter/material.dart';
import 'package:mercado_libre/widgets/drawer_custom.dart';

import '../widgets/notification_messages.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, (route) => route.isFirst);
        return true;
      },
      child: Scaffold(
        drawer: const DrawerCustom(
          estasEnNotificacions: true,
        ),
        appBar: AppBar(
          title: const Text('Notificaciones'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings_outlined))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            MessageNotifications(
              image: 'assets/00noti.png',
              title: 'Laptop HP 15-ef1009la',
              respuesta1: 'Cuánto cuesta su envío a Iquitos?',
              respuesta2: '25 soles',
            ),
            Divider(),
            MessageNotifications(
              image: 'assets/01noti.png',
              title: 'udífonos Bluetooth Manos Libres Inalámbricos, RQ8 Inalámbrico Audifo',
              respuesta1: 'Aún tienen Stock?',
              respuesta2: 'Sí, queda media docena',
            ),
            Divider(),
            MessageNotifications(
              image: 'assets/02noti.png',
              title: 'Parlante LG bluetooth portátil Xboom Go PL5',
              respuesta1: 'Cuánto dura su batería?',
              respuesta2: '4 horas',
            ),
            Divider(),
            MessageNotifications(
              image: 'assets/03noti.png',
              title: 'Mouse Gamer Sporting M838',
              respuesta1: 'Tiene lucecitas?',
              respuesta2: 'Obvio',
            ),
            Divider(),
            
          ],
        ),
      ),
    );
  }
}

