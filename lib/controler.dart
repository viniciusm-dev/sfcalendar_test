import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:sfcalendar_test/model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
part 'controler.g.dart';

const String apiLink =
    "https://js.syncfusion.com/demos/ejservices/api/Schedule/LoadData";

class Controler = _ControlerBase with _$Controler;

abstract class _ControlerBase with Store {
  @observable
  List<Event> events = [];

  @action
  getEvents() async {
    events = await getDataFromLink();
  }

  @computed
  EventDataSource get getCalendarDataSource {
    List<Appointment> _appointments = <Appointment>[];

    for (var element in events) {
      _appointments.add(Appointment(
          startTime: element.startTime ?? DateTime(2017, 06, 01),
          endTime: element.endTime ?? DateTime(2017, 06, 01),
          subject: element.subject ?? "No Subject",
          isAllDay: element.allDay ?? true));
    }

    return EventDataSource(_appointments);
  }
}

Future<List<Event>> getDataFromLink() async {
  Dio dio = Dio();
  List<Event> lista;

  Response<String> server = await dio.get(apiLink);

  lista = (json.decode(server.data ?? "") as List)
      .map((i) => Event.fromJson(i))
      .toList();

  return lista;
}

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Appointment> source) {
    appointments = source;
  }
}
