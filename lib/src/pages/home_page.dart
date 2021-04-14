import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _estiloTexto = new TextStyle(fontSize: 32);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Titulo'),
              centerTitle: true,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de Clicks', style: _estiloTexto),
                Text('$_conteo', style: _estiloTexto),
              ],
            )),
            floatingActionButton: _crearBotones()));
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: __sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void __sustraer() {
    setState(() => _conteo--);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
