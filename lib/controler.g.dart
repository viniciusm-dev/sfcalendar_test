// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controler.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controler on _ControlerBase, Store {
  Computed<EventDataSource>? _$getCalendarDataSourceComputed;

  @override
  EventDataSource get getCalendarDataSource =>
      (_$getCalendarDataSourceComputed ??= Computed<EventDataSource>(
              () => super.getCalendarDataSource,
              name: '_ControlerBase.getCalendarDataSource'))
          .value;

  late final _$eventsAtom =
      Atom(name: '_ControlerBase.events', context: context);

  @override
  List<Event> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(List<Event> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  late final _$getEventsAsyncAction =
      AsyncAction('_ControlerBase.getEvents', context: context);

  @override
  Future getEvents() {
    return _$getEventsAsyncAction.run(() => super.getEvents());
  }

  @override
  String toString() {
    return '''
events: ${events},
getCalendarDataSource: ${getCalendarDataSource}
    ''';
  }
}
