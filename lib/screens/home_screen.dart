import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState((){
                  counter--;
                });
              }, child: const Text('Decrement')),
              Text('$counter', style: const TextStyle(fontSize: 30),),
              ElevatedButton(onPressed: (){
                setState((){
                  counter++;
                });
              }, child: const Text('Increment')),

            ],
          ),
        ),
      ),
    );
  }
}
