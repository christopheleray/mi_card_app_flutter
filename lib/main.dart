import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Christophe Leray'),
          backgroundColor: Colors.blueGrey,
          elevation: 30.0,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.web), title: Text('Website')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('Profile')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera), title: Text('Camera')),
            ]),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
              scale: 1.2,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/Profil_pic.jpg'),
              ),
            ),
            Text(
              'Christophe Leray',
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                  color: Colors.white70,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 30.0,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'chris@swintoo.com',
                        style: TextStyle(
                          color: Colors.indigo[500],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30.0,
                      color: Colors.amber,
                    ),
                    title: Text(
                      '+337 67 16 05 26',
                      style: TextStyle(
                        color: Colors.indigo[500],
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    subtitle: Text('+1 347 380 5605'),
                    trailing: Icon(Icons.more_vert))),
          ],
        )),
      ),
    );
  }
}
