import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Event {
  int? id;
  String? subject;
  String? location;
  DateTime? startTime;
  DateTime? endTime;
  Null? description;
  int? owner;
  Null? priority;
  int? recurrence;
  Null? recurrenceType;
  Null? recurrenceTypeCount;
  Null? reminder;
  String? categorize;
  Null? customStyle;
  bool? allDay;
  Null? recurrenceStartDate;
  Null? recurrenceEndDate;
  String? recurrenceRule;
  Null? startTimeZone;
  Null? endTimeZone;

  Event(
      {this.id,
      this.subject,
      this.location,
      this.startTime,
      this.endTime,
      this.description,
      this.owner,
      this.priority,
      this.recurrence,
      this.recurrenceType,
      this.recurrenceTypeCount,
      this.reminder,
      this.categorize,
      this.customStyle,
      this.allDay,
      this.recurrenceStartDate,
      this.recurrenceEndDate,
      this.recurrenceRule,
      this.startTimeZone,
      this.endTimeZone});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    subject = json['Subject'];
    location = json['Location'];
    startTime = DateTime.parse(json['StartTime']);
    endTime = DateTime.parse(json['EndTime']);
    description = json['Description'];
    owner = json['Owner'];
    priority = json['Priority'];
    recurrence = json['Recurrence'];
    recurrenceType = json['RecurrenceType'];
    recurrenceTypeCount = json['RecurrenceTypeCount'];
    reminder = json['Reminder'];
    categorize = json['Categorize'];
    customStyle = json['CustomStyle'];
    allDay = json['AllDay'];
    recurrenceStartDate = json['RecurrenceStartDate'];
    recurrenceEndDate = json['RecurrenceEndDate'];
    recurrenceRule = json['RecurrenceRule'];
    startTimeZone = json['StartTimeZone'];
    endTimeZone = json['EndTimeZone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = this.id;
    data['Subject'] = this.subject;
    data['Location'] = this.location;
    data['StartTime'] = this.startTime;
    data['EndTime'] = this.endTime;
    data['Description'] = this.description;
    data['Owner'] = this.owner;
    data['Priority'] = this.priority;
    data['Recurrence'] = this.recurrence;
    data['RecurrenceType'] = this.recurrenceType;
    data['RecurrenceTypeCount'] = this.recurrenceTypeCount;
    data['Reminder'] = this.reminder;
    data['Categorize'] = this.categorize;
    data['CustomStyle'] = this.customStyle;
    data['AllDay'] = this.allDay;
    data['RecurrenceStartDate'] = this.recurrenceStartDate;
    data['RecurrenceEndDate'] = this.recurrenceEndDate;
    data['RecurrenceRule'] = this.recurrenceRule;
    data['StartTimeZone'] = this.startTimeZone;
    data['EndTimeZone'] = this.endTimeZone;
    return data;
  }
}
