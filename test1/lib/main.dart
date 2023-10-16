import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: const Text(
                    'The Creation Of\nAdams',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  'by Michelangelo, Rome Italian',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.list_alt,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            const Color.fromARGB(255, 48, 46, 46), Icons.book, 'Read'),
        _buildButtonColumn(
            const Color.fromARGB(255, 48, 46, 46), Icons.save, 'Save'),
        _buildButtonColumn(
            const Color.fromARGB(255, 48, 46, 46), Icons.share, 'Share'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(
        top: 15,
        left: 32,
        bottom: 32,
      ),
      child: const Text(
        'In 1505, Michelangelo was invited back to Rome by the newly elected Pope Julius II. '
        'He was commissioned to build the Popes tomb, which was to include forty statues and be finished in five years. '
        'Under the patronage of the Pope, Michelangelo experienced constant interruptions to his work on the tomb in order to accomplish numerous other tasks. '
        'Although Michelangelo worked on the tomb for 40 years, it was never finished to his satisfaction.',
        softWrap: true,
      ),
    );

    Widget subtitle = Container(
      padding: const EdgeInsets.only(top: 35, left: 32, bottom: 1),
      child: const Text(
        'History',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      title: 'Test Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Flutter'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/adms.PNG',
              width: 600,
              height: 250,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            subtitle,
            textSection,
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
