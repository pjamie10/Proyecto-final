import 'package:flutter/material.dart';
import 'package:mercado_libre/pages/open_image_page.dart';
import 'package:mercado_libre/widgets/drawer_custom.dart';
import 'package:mercado_libre/widgets/informacion_del_vendedor.dart';
import 'package:mercado_libre/widgets/page_view_detail.dart';

class DetailProduct extends StatefulWidget {
  final Map productIndex;

  DetailProduct({
    super.key,
    required this.productIndex,
  });

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustom(
        estasEnDetails: true,
      ),
      appBar: AppBar(
        title: const Text('Producto'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          Text('   ${widget.productIndex['vendidos']} vendidos'),
          const SizedBox(height: 8.0),
          Text('   ${widget.productIndex['title']}', style: const TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 8.0),
          PageViewDetail(productIndex: widget.productIndex),
          const SizedBox(height: 8.0),
          Text(
            '   ${widget.productIndex['price']}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          Text('   ${widget.productIndex['por']}',
              style: const TextStyle(color: Colors.green, fontSize: 24.0)),
          const Text('   Ver los medios de pago',
              style: TextStyle(color: Colors.blue)),
          widget.productIndex['gratis']
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.local_shipping, color: Colors.green),
                      const SizedBox(width: 8.0),
                      const Text('Llega gratis ',
                          style: TextStyle(color: Colors.green)),
                      const Text('entre el martes y el viernes',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              : const SizedBox(),
          const Text('   Ver más formas de entrega',
              style: TextStyle(color: Colors.blue)),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Text('Cantidad: '),
                Text(
                  widget.productIndex['cantidad'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  ' (${widget.productIndex['disponible']} disponibles)',
                  style: const TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Comprar Ahora'))),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.star),
                const Text(' 6 meses de garantía'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          widget.productIndex['favorito'] =
                              !widget.productIndex['favorito'];
                          setState(() {});
                        },
                        icon: Icon(
                          widget.productIndex['favorito']
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: Colors.blue,
                        ),
                      ),
                      widget.productIndex['favorito']
                          ? const Text(
                              'Quitar de favoritos',
                              style: TextStyle(color: Colors.blue),
                            )
                          : const Text(
                              'Agregar a favoritos',
                              style: TextStyle(color: Colors.blue),
                            ),
                      const SizedBox(width: 8.0),
                      const Icon(
                        Icons.share_outlined,
                        color: Colors.blue,
                      ),
                      const Text(
                        '  Compartir',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InformacionDelVendedorWidget(productIndex: widget.productIndex),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.productIndex['descripcion']),
          )
        ],
      ),
    );
  }
}
