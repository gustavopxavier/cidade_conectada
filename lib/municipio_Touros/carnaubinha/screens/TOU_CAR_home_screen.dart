import 'package:flutter/material.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// https://github.com/flutter/website/blob/master/examples/layout/lakes/step6/lib/main.dart
void main() {
  // debugPaintSizeEnabled = true;
  runApp(TouCarHomeScreen());
}

class TouCarHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Carnaubinha Conectada',
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.surface.withOpacity(.60)),
                  ),
                ),
                Text(
                  'A cidade de Carnaubinha na palma da sua mão',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(
        bottom: 32.0,
        left: 32.0,
        right: 32.0,
        top: 0.0,
      ),
      child: Text(
        '           O aplicativo Cidade Conectada tem como objetivo fomentar os negócios dos pequenos, médios e grandes empreendimentos e empreendedores da sua cidade.',
        softWrap: true,
        style: TextStyle(
          fontSize: 18,
          color: colorScheme.surface,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Cidade Conectada',
      home: Scaffold(
        backgroundColor: colorScheme.primary,
        // appBar: AppBar(
        //   title: Text('Flutter layout demo'),
        // ),
        body: ListView(
          children: [
            Image.network(
              'https://serpro.gov.br/menu/noticias/noticias-2018/estrategias-governo-eletronico-brasileiro/cidade-conectada-portal-externo.jpg/@@images/9b539d09-3b91-43bf-a1e8-d587f3cccfaa.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.contain,
            ),
            titleSection,
            // buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class TouCarHomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;

//     return MaterialApp(
//       title: 'Bem Vindos a Beijo do Prazer',
//       home: Scaffold(
//         backgroundColor: colorScheme.primary,
//         // appBar: AppBar(
//         //   title: Text('Bem Vindos a Beijo do Prazer'),
//         // ),
//         body: Center(
//           child: Text('Beijo do Prazer'),
//         ),
//       ),
//     );

//     // return Scaffold(
//     //   backgroundColor: colorScheme.primary,
//     //   body: Center(
//     //     child: Text('Início Home Screen'),
//     //   ),
//     // );
//   }
// }