import 'package:flutter/material.dart';
import 'package:flutter1/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset('assets/img/submarine.jpg'),
          Container(
            margin: EdgeInsets.only(top: 16.0),
              child: Text(
                  "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
          ),
            Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: const <Widget> [
                    Icon(Icons.calendar_today),
                    Text('Open Everyday'),
            ],
            ),
                Column(
                  children: const <Widget> [
                    Icon(Icons.access_alarm),
                    Text('08:00 - 16:00'),
                  ],
                ),
                Column(
                  children: const <Widget> [
                    Icon(Icons.monetization_on_outlined),
                    Text('Rp 10.000,-'),
                  ],
                ),

        ],
      ),
      ),
            Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0,
                          fontFamily: 'Oxygen',
                  ),
                )
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular (50.0),
                    child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular (50.0),
                    child: Image.network(
                      'assets/img/monkasel.jpg',
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular (50.0),
                    child: Image.network(
                      'assets/img/monkasel1.jpg',
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular (50.0),
                    child: Image.network(
                      'assets/img/monkasel2.jpg',
                    ),
                  ),
                ],
              ),
            )
    ]
    ),
      )
    );
  }
}


