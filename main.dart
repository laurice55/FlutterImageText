import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design Library widgets, tools for building material design Ui google design system

import - dart keyword to include external libraries

package:flutter - refers to material design packages

this is essential for building flutter apps w/ a standard UI

* */



void main() {
  runApp(const MyApp()); //flutter function that initialize the app and attaches root widget (My App()) to the screen

}

class MyApp extends StatelessWidget { // MyApp Extends custom class
  //stateless widgets - base class for widgets that do not hold mutable

  const MyApp({super.key});

  @override //indicate the method overrides the statelessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
        home: const MyHomePage(),
    );
  }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Title App'),
      ),
      body: const Center(
        child: Text(
          'Hello Flutter!!!',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ACTIVITY#1 '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/ADVENTURE.jpg',
                width: 500,
                height: 500,
              ),
              const Text(
                'CAPTAIN AMERICA',
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                'SYNOPSIS',
                style: TextStyle(fontSize: 30),
              ),
            const Text(
              'After the cataclysmic events in New York with his fellow Avengers,Steve Rogers, aka Captain America (Chris Evans), lives in the nation\n'
                  'capital as he tries to adjust to modern times. An attack on a S.H.I.E.L.D. colleague throws Rogers into a web of intrigue that\n'
                    'places the whole world at risk. Joining forces with the Black Widow (Scarlett Johansson) and a new ally, the Falcon,\n'
                      'Rogers struggles to expose an ever-widening conspiracy, but he and his team soon come up against an unexpected enemy.\n',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )
    );
  }
}






