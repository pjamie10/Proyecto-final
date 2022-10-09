import 'package:flutter/material.dart';

class InformacionDelVendedorWidget extends StatelessWidget {
  final Map productIndex;

  const InformacionDelVendedorWidget({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '  Información sobre el vendedor',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        ListTile(
          leading: const Icon(Icons.location_history),
          title: const Text('Ubicación'),
          subtitle: Text(productIndex['ubicacion']),
        ),
        productIndex['esBueno']
            ? const ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                title: Text(
                  'Mercadolíder Gold',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                subtitle: Text('Es uno de los mejores sitios'),
              )
            : const SizedBox(),
        productIndex['esBueno']
            ? Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0, color: Colors.red.withOpacity(0.25)),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0,
                            color: Colors.yellow.withOpacity(0.25)),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0, color: Colors.green.withOpacity(0.25)),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(height: 8.0, color: Colors.green),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(productIndex['ventasEnUltimos120']),
                            const Text(
                              'Ventas en los últimos 120 días',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.messenger_sharp,
                                color: Colors.green),
                            const Text(
                              'Buena atención',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.timer, color: Colors.green),
                            const Text(
                              'Entrega sus productos a tiempo',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0, color: Colors.red.withOpacity(0.25)),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(height: 8.0, color: Colors.yellow),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0, color: Colors.green.withOpacity(0.25)),
                      ),
                      const SizedBox(width: 3.0),
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 8.0, color: Colors.green.withOpacity(0.37)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(productIndex['ventasEnUltimos120']),
                            const Text(
                              'Ventas en los últimos 120 días',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.messenger_sharp,
                                color: Colors.red),
                            const Text(
                              'No tan buena atención',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.punch_clock, color: Colors.red),
                            const Text(
                              'No entrega sus productos a tiempo',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.black26),
            borderRadius: BorderRadius.circular(6.0),
          ),
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Ver más datos de este vendedor',
                style: TextStyle(color: Colors.blue),
              ),
              Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue)
            ],
          ),
        ),
        const Divider(),
        const Text(
          '  Información del producto',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                      color: Colors.grey,
                    ),
                    child: const Text('  Marca')),
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                      color: Colors.black26,
                    ),
                    child: Text('  ${productIndex['marca']}')),
              ),
            ],
          ),
        ),
        const Divider(),
        const Text(
          '  Descripción',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ],
    );
  }
}
