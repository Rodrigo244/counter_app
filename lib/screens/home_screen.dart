import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle( fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Nùmero de Clicks', style: fontSize),
                  Text('100', style: fontSize)
                ],
              ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.thumb_up_rounded),
        onPressed: () { 
          print('Me presionaron upps');
         },),
          );
  }

}