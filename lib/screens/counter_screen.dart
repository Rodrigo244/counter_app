import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen ({Key? key}) : super(key: key);
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   
    int counter = 15;

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle( fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 const Text( 'Nùmero de Clicks', style: fontSize),
                  Text( '$counter', style: fontSize)
                ],
              ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

        FloatingActionButton(
        child: const Icon( Icons.exposure_plus_1_outlined),
        onPressed: () => setState(() => counter++),
        ),  
          
      
       FloatingActionButton(
        child: const Icon( Icons.delete),
        onPressed: () => setState(() => counter =0),

       ),

        FloatingActionButton(
        child: const Icon( Icons.exposure_minus_1),
        onPressed: () => setState(() => counter--),


          ),
        ],
      ),
    );
  }
}