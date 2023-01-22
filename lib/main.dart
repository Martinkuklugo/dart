import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liga_futbol_sabatina1/pages/Resultados.dart';
import 'package:liga_futbol_sabatina1/pages/ajustes.dart';
import 'package:liga_futbol_sabatina1/pages/noticias.dart';
import 'package:liga_futbol_sabatina1/pages/pagina_Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 1;
  List<Widget> _paginas = [
    PaginaHome(),
    PaginaResultados(),
    PaginaNoticias(),
    PaginaAjustes()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          backgroundColor: Colors.green,
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items:[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.trophy), label: "Resultados",backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Noticias",backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Austes",backgroundColor: Colors.green ),
            ]),
      ),
    );
  }
}
