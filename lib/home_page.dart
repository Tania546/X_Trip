import 'package:flutter/material.dart';
import 'listview.dart';
import 'stateful_widget.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigatorBar(),
    );
  }
}

class ColorChange extends StatefulWidget {
  @override
    _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}

class NavigatorBar extends StatefulWidget {
  @override
  _NavigatorBarState createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Tentang'),
        ),
        ListTile(
          title: Text('Pesan Saya'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Katalog Saya'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Pengaturan Akun'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Pusat Bantuan'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Version'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
    ),
      body: Center(
        child: BodyWidget()
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pencarian',
            backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedFontSize: 20,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Exit',
        child: Icon(Icons.exit_to_app),
      ),
    );
  }
}