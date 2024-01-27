import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      ),
      home: MyHomePage(title:"Flutter Demo Home Page"),
      );
  }
}


class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key,required this.title});
  final String title;
  @override
  State<MyHomePage>createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _couter = 0;

  void _incrementCounnter(){
    setState(() {
      _couter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("You have pushed the button this many times:",
            ),
            Text('$_couter',
            style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounnter,
      tooltip: "Incremet",
      child: const Icon(Icons.add),
      ),
    );
  }
}