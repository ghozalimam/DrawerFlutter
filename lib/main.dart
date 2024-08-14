import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Drawer",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, size: 30, color: Colors.white),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, size: 30, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Text(
                "Dashboard",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      print("Home");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {
                      print("Profile");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    onTap: () {
                      print("Cart");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text("pembayaran"),
                    onTap: () {
                      print("pembayaran");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Status"),
                    onTap: () {
                      print("Status");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.bar_chart),
                    title: Text("Statistik"),
                    onTap: () {
                      print("Statistik");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text("Bantuan"),
                    onTap: () {
                      print("Bantuan");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log Out"),
                    onTap: () {
                      print("Log Out");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
