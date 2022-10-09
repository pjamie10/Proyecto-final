import 'package:flutter/material.dart';
import 'package:mercado_libre/pages/search_page.dart';
import 'package:mercado_libre/utils/data.dart';

import '../widgets/card_principal.dart';
import '../widgets/drawer_custom.dart';
import '../widgets/page_view_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustom(
        estasEnHome: true,
      ),
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            elevation: 0.0,
            color: Colors.white,
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SearchPage())),
            child: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(width: 8.0),
                Text('Buscar en mercado Libre'),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const PageViewHome(),
          Center(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: producto.length,
              itemBuilder: (context, index) {
                return CardPrincipal(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
