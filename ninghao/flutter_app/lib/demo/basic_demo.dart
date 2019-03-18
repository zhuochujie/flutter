import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
        )
      ),
//      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3,
                style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 16),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 25.0,
                  spreadRadius: -9
                )
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 28, 128, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),

          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: 'ninghao',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
              fontSize: 34
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                )
            )
          ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
      fontSize: 16
  );
  final String _author = 'xiaoz';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello,$_author', style: _textStyle,);
  }
}