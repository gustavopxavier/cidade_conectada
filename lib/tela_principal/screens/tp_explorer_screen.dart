import 'package:cidade_conectada/municipio_Touros/carnaubinha/TOU_CAR_main.dart';
import 'package:flutter/material.dart';

class TpExplorerScreen extends StatefulWidget {
  @override
  _TpExplorerScreenState createState() => _TpExplorerScreenState();
}

class _TpExplorerScreenState extends State<TpExplorerScreen> {
  final List<String> _cidadesTouros = [
    "Carnaubinha",
    "Touros",
    "Perobas",
    "Lagoa do Sal",
    "Cajueiro",
  ];

  var _imgListCidadesTouros = [
    "https://lirp-cdn.multiscreensite.com/39c8167d/dms3rep/multi/opt/logo-branco-320w.png",
    "http://cmtouros.rn.gov.br/wp-content/uploads/2019/01/cm-touros-header.jpg",
    "https://lirp-cdn.multiscreensite.com/39c8167d/dms3rep/multi/opt/logo-branco-320w.png",
    "http://cmtouros.rn.gov.br/wp-content/uploads/2019/01/cm-touros-header.jpg",
    "https://lirp-cdn.multiscreensite.com/39c8167d/dms3rep/multi/opt/logo-branco-320w.png",
  ];

  var _classListCidadesTouros = [
    "Carnaubinha()",
    "Touros()",
    "Perobas()",
    "LagoaDoSal()",
    "Cajueiro()",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Explorar Cidades"),
        ),
        body: tpExplorerListView(),
      ),
    );
  }

  tpExplorerListView() {
    return ListView.builder(
      itemCount: _cidadesTouros.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return TouCarMain();
                },
              ),
            );
          },
          child: Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        child: Image.network(_imgListCidadesTouros[index]),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _cidadesTouros[index],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
