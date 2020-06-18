import 'package:animation/screens/login/CategoryView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> contaierGrow;

  HomeTop({@required this.contaierGrow});




  @override
  Widget build(BuildContext context) {

    //pegando o tamanho da tela
    final screenSize = MediaQuery.of(context).size;

    return Container(
      //.heigth tamanho da tela. *0.3 pega 30% dessa tela
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bem vindo Luiz",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 30
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: contaierGrow.value * 120,
              height: contaierGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/perfil.png",),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                width: contaierGrow.value * 35,
                height: contaierGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: contaierGrow.value * 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0)
                ),
              ),
            ),
            CategoryView()
          ],
        ),
      ),
    );
  }
}
