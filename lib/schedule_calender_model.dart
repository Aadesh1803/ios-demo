// To parse this JSON data, do
//
//     final shiduleCalendarModel = shiduleCalendarModelFromJson(jsonString);

import 'dart:convert';

ShiduleCalendarModel shiduleCalendarModelFromJson(String str) =>
    ShiduleCalendarModel.fromJson(json.decode(str));

String shiduleCalendarModelToJson(ShiduleCalendarModel data) =>
    json.encode(data.toJson());

class ShiduleCalendarModel {
  bool? success;
  List<Event>? events;

  ShiduleCalendarModel({
    this.success,
    this.events,
  });

  factory ShiduleCalendarModel.fromJson(Map<String, dynamic> json) =>
      ShiduleCalendarModel(
        success: json["Success"],
        events: json["Events"] == null
            ? []
            : List<Event>.from(json["Events"]!.map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "Events": events == null
            ? []
            : List<dynamic>.from(events!.map((x) => x.toJson())),
      };
}

class Event {
  String? date;
  int? events;

  Event({
    this.date,
    this.events,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        date: json["date"],
        events: json["events"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "events": events,
      };
}
