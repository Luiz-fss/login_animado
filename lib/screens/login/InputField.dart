import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData iconData;

  InputField({this.hint,this.obscure,this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white,width: 0.5),

        )
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          icon: Icon(iconData,color: Colors.white,),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(
            top: 30,
            right: 30,
            bottom: 30,
            left: 5
          )
        ),
      ),
    );
  }
}
