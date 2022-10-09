import 'package:flutter/material.dart';
import 'package:mercado_libre/pages/favorite_page.dart';
import 'package:mercado_libre/pages/notifications_page.dart';
import 'package:mercado_libre/pages/profile_page.dart';
import 'package:mercado_libre/pages/search_page.dart';

class DrawerCustom extends StatelessWidget {
  final bool estasEnHome;
  final bool estasEnNotificacions;
  final bool estasEnFavorite;
  final bool estasEnProfile;
  final bool estasEnDetails;

  const DrawerCustom({
    super.key,
    this.estasEnHome = false,
    this.estasEnNotificacions = false,
    this.estasEnFavorite = false,
    this.estasEnProfile = false,
    this.estasEnDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.yellow,
            child: ListTile(
              leading: const Icon(Icons.person, size: 48.0),
              title: const Text('Hola Pedro'),
              subtitle: Container(
                padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.white70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.handshake),
                    Text('Mercado Pago'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ),
          ListTile(
              onTap: () => estasEnHome
                  ? estasEnDetails
                      ? Navigator.popUntil(context, (route) => route.isFirst)
                      : Navigator.pop(context)
                  : {
                      Navigator.popUntil(context, (route) => route.isFirst),
                    },
              leading: const Icon(Icons.home_outlined),
              title: const Text('Inicio')),
          ListTile(
              onTap: () => estasEnNotificacions
                  ? Navigator.pop(context)
                  : {
                      Navigator.pop(context),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationsPage(),
                        ),
                      ),
                    },
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notificaciones')),
          ListTile(
              onTap: () => estasEnFavorite
                  ? Navigator.pop(context)
                  : {
                      Navigator.pop(context),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavoritePage(),
                        ),
                      ),
                    },
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Favoritos')),
          ListTile(
              onTap: () => estasEnProfile
                  ? Navigator.pop(context)
                  : {
                      Navigator.pop(context),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      ),
                    },
              leading: Icon(Icons.person_outline),
              title: Text('Mi cuenta')),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            leading: const Icon(Icons.search),
            title: const Text('Buscar'),
          ),
          const ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text('Mis compras')),
          const ListTile(
              leading: Icon(Icons.label_outline), title: Text('Ofertas')),
          const ListTile(
              leading: Icon(Icons.timer_outlined), title: Text('Historial')),
          const ListTile(
              leading: Icon(Icons.info_outline), title: Text('Ayuda')),
          const Divider(),
          const ListTile(
              leading: Icon(Icons.beach_access_outlined), title: Text('Moda')),
          const ListTile(
              leading: Icon(Icons.store_outlined),
              title: Text('Tiendas oficiales')),
          const ListTile(leading: Icon(Icons.list), title: Text('Categorías')),
          const Divider(),
          const ListTile(
              leading: Icon(Icons.list_alt_outlined), title: Text('Resumen')),
          const ListTile(
              leading: Icon(Icons.label_important_outline),
              title: Text('Resumen')),
          const Divider(),
          const ListTile(
              leading: Icon(Icons.book_online),
              title: Text('Libro de reclamaciones')),
          const Divider(),
          const Text('      A cerca de Mercado Libre\n'),
        ],
      ),
    );
  }
}
