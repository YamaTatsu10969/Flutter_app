// ※コメントは mono さんのブログ[https://medium.com/flutter-jp/first-step-9b7f2c74fb08] の引用がほとんどです
// マテリアルデザイン用のUIコンポーネントを使えるように上のように import 文を書きます。
// iOSっぽいデザインにしたい場合、以下が用意されていますが、とりあえずマテリアルデザインに統一した方が楽かつ簡単です。
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// FlutterのUI構築の1番の基本はStatelessWidgetを継承したクラスの組み合わせです。名前の通り、Stateless(状態を持たず静的)なWidget(UIコンポーネント)です。
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter!!!!!!',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          display1: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      home: MyHomePage(title: 'Hello Flutter!!!!!!'),
    );
  }
}

class yamatatsuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MyHomePage extends StatefulWidget {
  // コンストラクター
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // G. 状態の保持と更新
  int _counter = 0;
  void _incrementCounter() {
    // 値の更新とともに、それをUIに伝えたい場合は、次のようにsetStateで囲むお作法があります。
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World!!!!!!!!!',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
