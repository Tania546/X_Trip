import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Builder')),
        body: BodyWidget(),
      ),
    );
  }
}

String dartUrl = 'https://img.icons8.com/color/50/000000/dart.png';
String kotlinUrl = 'https://img.icons8.com/color/48/000000/kotlin.png';
String javaUrl = 'https://img.icons8.com/color/48/000000/java-coffee-cup-logo.png';
String phpUrl = 'https://img.icons8.com/offices/30/000000/php-logo.png';
String swiftUrl = 'https://img.icons8.com/color/30/000000/swift.png';
String javascriptUrl = 'https://img.icons8.com/color/48/000000/javascript--v1.png';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(dartUrl),
          ),
          title: Text('Dart'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('dart');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(kotlinUrl),
          ),
          title: Text('Kotlin'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('kotlin');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(javaUrl),
          ),
          title: Text('Java'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('java');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(phpUrl),
          ),
          title: Text('PHP'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('php');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(swiftUrl),
          ),
          title: Text('Swift'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('swift');
          },
        ),ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(javascriptUrl),
          ),
          title: Text('JavaScript'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('javascript');
          },
        ),
      ],
    );
  }
}