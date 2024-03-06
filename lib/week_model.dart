// To parse this JSON data, do
//
//     final weekModel = weekModelFromJson(jsonString);

import 'dart:convert';

WeekModel weekModelFromJson(String str) => WeekModel.fromJson(json.decode(str));

String weekModelToJson(WeekModel data) => json.encode(data.toJson());

class WeekModel {
  bool? success;
  String? currentWeek;
  List<WeekNumber>? weekNumbers;

  WeekModel({
    this.success,
    this.currentWeek,
    this.weekNumbers,
  });

  factory WeekModel.fromJson(Map<String, dynamic> json) => WeekModel(
        success: json["Success"],
        currentWeek: json["Current Week"],
        weekNumbers: json["Week Numbers"] == null
            ? []
            : List<WeekNumber>.from(
                json["Week Numbers"]!.map((x) => WeekNumber.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "Current Week": currentWeek,
        "Week Numbers": weekNumbers == null
            ? []
            : List<dynamic>.from(weekNumbers!.map((x) => x.toJson())),
      };
}

class WeekNumber {
  String? week;
  bool? showInWeekly;

  WeekNumber({
    this.week,
    this.showInWeekly,
  });

  factory WeekNumber.fromJson(Map<String, dynamic> json) => WeekNumber(
        week: json["week"] ?? json["Week"],
        showInWeekly: json["showInWeekly"],
      );

  Map<String, dynamic> toJson() => {
        "week": week,
        "showInWeekly": showInWeekly,
      };
}
