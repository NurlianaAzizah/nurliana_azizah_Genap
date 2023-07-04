import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppPrima extends StatefulWidget {
  const AppPrima({super.key});

  @override
  State<AppPrima> createState() => _AppPrimaState();
}

class _AppPrimaState extends State<AppPrima> {
  int number=0;
  String output = ' ';
  void tekanAku(){
    setState(() {
      number +=1;
      output = 'Bilangan Prima = ';
      if (number>45) {
        number=0;
      }
      for (int i = 1; i < number; i++) {
        int num=0;
        for (int j = 1; j <= i; j++) {
          if (i%j==0) {
            num=num+1;
          }
        }
        if (num==2) {
          output+='$i, ';
        }
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genap',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => tekanAku(),
        child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Nurliana Azizah Genap'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Angka: $number', style: TextStyle(color: Colors.blue),),
              // Text('Angka: $angka adalah bilangan Prima ? $hasil', style: TextStyle(color: Colors.orange),),
              //Text('Angka: $angka adalah bilangan Prima ? $hasil', style: TextStyle(color: Colors.orange),),
              Text(
              '$output',
              style: TextStyle(color: Colors.orange),
            ),
            ],
          ),
        ),
      ),
    );
  }
}