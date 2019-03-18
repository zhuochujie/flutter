import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: 200,
                child: Container(
                  alignment: Alignment(0, -1),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1),
//                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1),
                        Color.fromRGBO(3, 54, 255, 1),
                      ]
                    )
                  ),
                  child: Icon(Icons.brightness_2, color: Colors.white, size: 32,),
                ),
              ),
              Positioned(
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32,),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}