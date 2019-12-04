import 'package:flutter/material.dart';
import 'package:projeto_fit_app/Treinos/treino.dart';
import 'package:projeto_fit_app/Treinos/treino_detalhes.dart';

class ListCell extends StatelessWidget {

  final List<Treino> treinos;
  final int index;

  ListCell({this.treinos, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(treinos[index].title),
          onTap: () {
            Navigator.push(context,
                _onTap(treinos[index].title, context, treinos[index]));
          },
        ),
        Divider(),
      ],
    );
  }

  _onTap(String title, BuildContext context, Treino treino) {
    return Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            treino_detalhes(
              title: title,
              treino: treino,
            ))
    );
  }

  treino_detalhes({String title, Treino treino}) {}

}