import 'package:animation/screens/login/ListData.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Curso do Daniel",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Curso do Daniel",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
