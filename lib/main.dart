import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'controler.dart';

final controler = Controler();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    controler.getEvents();

    CalendarController calendarController = CalendarController();

    return Observer(
      builder: (_) {
        return SfCalendar(
          controller: calendarController,
          initialDisplayDate: DateTime(2017, 06, 01),
          dataSource: controler.getCalendarDataSource,
        );
        ;
      },
    );
  }
}
