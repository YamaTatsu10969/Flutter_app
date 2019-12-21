import 'package:flutter/cupertino.dart';

void main() => runApp(CupertinoAppTest());

class CupertinoAppTest extends StatelessWidget {
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          navLargeTitleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 70.0,
            color: CupertinoColors.activeGreen,
          ),
        ),
      ),
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Hello, world!',
        style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle),
      ),
    );
  }
}
