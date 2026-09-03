import 'package:flutter/material.dart';

void main() {
  runApp(ListHW());
}

class ListHW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherForecast(),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> days = [
      'Friday',
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
    ];
    List<String> temps = [
      '6 °F',
      '5 °F',
      '22 °F',
      '10 °F',
      '12 °F',
      '18 °F',
      '15 °F',
    ];
    List<IconData> icons = [
      Icons.wb_sunny,
      Icons.wb_cloudy,
      Icons.ac_unit,
      Icons.grain,
      Icons.wb_sunny,
      Icons.cloud,
      Icons.ac_unit,
    ];
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Weather Forecast',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(59, 254, 128, 128),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onSubmitted: (value) {
                  print('User wrote $value');
                },
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(color: Colors.white70),
                  icon: Icon(Icons.search, size: 25, color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Text(
                  'Zhambyl Oblast, KZ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  'Monday, September 7, 2026',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sunny, size: 90, color: Colors.white),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '14° F',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight(200),
                      ),
                    ),
                    Text(
                      'Light Snow',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight(300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white),
                    Text(
                      '5',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text('km/h', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(width: 60),

                Column(
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white),
                    Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text('%', style: TextStyle(color: Colors.white)),
                  ],
                ),

                SizedBox(width: 60),

                Column(
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white),
                    Text(
                      '20',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text('%', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),

            SizedBox(height: 50),

            Text(
              '7-DAY WEATHER FORECAST',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight(300),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) => Container(
                  width: 170,
                  margin: EdgeInsets.only(right: 10),
                  child: Card(
                    color: Colors.white24,
                    elevation: 0,

                    child: Center(
                      child: ListTile(
                        title: Text(
                          days[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),

                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              temps[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(width: 8),
                            Icon(icons[index], color: Colors.white, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




