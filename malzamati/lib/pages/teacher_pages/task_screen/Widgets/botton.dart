import 'package:flutter/material.dart';
class MyBotton extends StatelessWidget {
  const MyBotton({Key key, this.lable, this.onTop}) : super(key: key);
  final String lable;
  final Function onTop;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTop,
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor,
            gradient: new LinearGradient(
        colors: [
        Theme
            .of(context)
            .accentColor,
          Theme
              .of(context)
              .primaryColor,

          ],
          begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],

    ),
          border: Border.all(color: Colors.white)
        ),
        child:Center(
          child: Text(lable,style: TextStyle(
              color: Colors.white
          ),),
        ),
      )
    );
  }
}
