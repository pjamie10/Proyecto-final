import 'package:flutter/material.dart';

import '../widgets/drawer_custom.dart';
import '../widgets/list_favorite.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, (route) => route.isFirst);
        return true;
      },
      child: Scaffold(
        drawer: const DrawerCustom(
          estasEnFavorite: true,
        ),
        appBar: AppBar(
          title: const Text('Favoritos'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            ListFavorite(
              image: 'assets/00fav.png',
              precio: '180',
              por: '15',
              title: 'Carrito a control remoto',
              gratis: true,
            ),
            Divider(),
            ListFavorite(
              image: 'assets/01fav.png',
              precio: '60',
              por: '6.50',
              title: 'Mochila fruity fairy pure colored azul',
            ),
            Divider(),
            ListFavorite(
              image: 'assets/02fav.png',
              precio: '400',
              por: '70.5',
              title: 'Bicicleta Vesubio Aro 27.5',
            ),
            Divider(),
            ListFavorite(
              image: 'assets/03fav.png',
              precio: '20',
              por: '5.5',
              title: 'Reloj Pared Básico',
              gratis: true,
            ),
            
          ],
        ),
      ),
    );
  }
}

