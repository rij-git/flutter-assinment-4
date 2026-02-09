import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Assignemnt 4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter(String cal) {
      setState(() {
        if (cal == 'add'){
          _counter++;
        }else if(cal == 'minus'){
          if(_counter<=0){
            _counter=0;
          }else{
            _counter--;
          }
        }else{
          _counter=0;
        }
      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 12),
          FloatingActionButton(
          onPressed: ()=>_incrementCounter('add'),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          ),
          SizedBox(width: 12),
          FloatingActionButton(
            onPressed: ()=>_incrementCounter('minus'),
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 12),
          FloatingActionButton(
            onPressed: ()=>_incrementCounter('reset'),
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
