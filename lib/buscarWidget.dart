import 'package:flutter/material.dart';

class BuscarMyWidget extends StatelessWidget {
  const BuscarMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      //onChanged: (value) => print(value),
      decoration: InputDecoration(
        labelText: 'Búsqueda',
        prefixIcon: Icon(Icons.search),
        hintText: 'Busca una película o actor',
        enabledBorder: UnderlineInputBorder()
      ),
    );
  }
}