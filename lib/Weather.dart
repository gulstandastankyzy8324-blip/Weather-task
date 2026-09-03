import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(Weather());

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather', style: TextStyle(color: Colors.black87)),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          iconTheme: IconThemeData(color: Colors.black54),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        body: _builtBody(),
      ),
    );
  }
}

Widget _builtBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
      'https://images.unsplash.com/photo-1592210454359-9043f067919b?q=80&w=1000&auto=format&fit=crop',
    ),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Tuesday - May 22',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),

      Divider(),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Widget _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Icon(Icons.wb_sunny, color: Colors.yellow)],
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('15° Clear', style: TextStyle(color: Colors.deepPurple)),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Murmanskaya oblast, Murmansk',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10,
    children: [
      ...List.generate(8, (int index) {
        return Chip(
          label: Text('${index + 20}°C', style: TextStyle(fontSize: 15)),
          avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    ],
  );
}

Row _footerRatings() {
  MainAxisSize.min;
  var stars = Row(
    children: <Widget>[
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.black),
      Icon(Icons.star, size: 15, color: Colors.black),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Info with openweathermap.org', style: TextStyle(fontSize: 15)),
      stars,
    ],
  );
}
