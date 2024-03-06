import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ios_demo/schedule_calender_model.dart';
import 'package:ios_demo/week_event_model.dart';
import 'package:ios_demo/week_model.dart';

class ScheduleController extends GetxController {
  // Rx<WeekModel> weekModel = WeekModel().obs;
  // Rx<ScrollController> scrollController = ScrollController().obs;
  // Rx<WeekEventModel> weekEventModel = WeekEventModel().obs;
  // Rx<ShiduleCalendarModel> scheduleCalendarModel = ShiduleCalendarModel().obs;
  RxInt currentIndex = 0.obs;

  RxBool isExpanded = false.obs;
  RxBool isLoading = false.obs;
  double scrollOffset = 0;
  RxBool showCalendar = false.obs;
  RxBool isCalendarLoad = false.obs;
  RxString leagueId = "".obs;
  Rx<DateTime> focusedDay = DateTime.now().obs;
  DateTime? selectedDay;
  RxString sportId = "".obs;
  RxInt selectedWeekDayOrder = 0.obs;
  //  var filterEvent = <Schedule>[].obs;
  RxBool isloading = false.obs;
  RxBool isCheck = true.obs;
  // ScrollController weekListController = ScrollController();
  // late final Box box;

  // getSchedulWeekList(String sportId) async {
  //   try {
  //     isloading.value = true;
  //     // var schedulList = await RestService.scheduleWeekList(sportId);
  //     isloading.value = false;
  //     isloading.refresh();
  //     // if (schedulList.weekNumbers != []) {
  //     //   weekModel.value = schedulList;
  //     //   navToSpecificTab();
  //     //   weekModel.refresh();
  //     //   if (weekModel.value.currentWeek != null) {
  //     //     getWeekWiseEventList(
  //     //       leagueId.value,
  //     //       weekModel.value.currentWeek ?? "",
  //     //     );
  //     //   }
  //     //   // await box.put("weekList", schedulList);
  //     //   // addWeekModel(userModel: U)
  //     // } else {
  //     // }
  //   } catch (e) {
  //     isloading.value = false;
  //     isloading.refresh();
  //   }
  // }

  // void navToSpecificTab({int? index}) {
  //   for (var i = 0; i < (weekModel.value.weekNumbers?.length ?? 0); i++) {
  //     if (weekModel.value.currentWeek == weekModel.value.weekNumbers?[i].week) {
  //       if (index != null) {
  //         currentIndex.value = index;
  //       } else {
  //         currentIndex.value = i;
  //       }
  //       Future.delayed(
  //         const Duration(seconds: 1),
  //         () {
  //           if (scrollController.value.hasClients) {
  //             scrollController.value.animateTo(
  //               i * 100,
  //               curve: Curves.linear,
  //               duration: const Duration(milliseconds: 250),
  //             );
  //             scrollController.refresh();
  //           }
  //         },
  //       );
  //       currentIndex.refresh();
  //       break;
  //     }
  //   }
  //   var getLiveLatestData = weekEventModel.value.schedule?.firstWhereOrNull(
  //     (element) => element.status == "Live",
  //   );
  //   if (getLiveLatestData != null) {
  //     Future.delayed(const Duration(seconds: 3), () {
  //       if (weekListController.hasClients) {
  //         Scrollable.ensureVisible(
  //           GlobalObjectKey(
  //             getLiveLatestData.playerTeamID ?? 0,
  //           ).currentContext!,
  //         );
  //       }
  //     });
  //   } else {
  //     var upComingData = weekEventModel.value.schedule?.firstWhereOrNull(
  //       (element) => element.status == "Upcoming",
  //     );
  //     if (upComingData != null) {
  //       Future.delayed(const Duration(seconds: 3), () {
  //         if (weekListController.hasClients) {
  //           Scrollable.ensureVisible(
  //             GlobalObjectKey(
  //               "${upComingData.playerTeamID ?? 0}${upComingData.opponentTeamID ?? 0}${upComingData.datetime}",
  //             ).currentContext!,
  //           );
  //         }
  //       });
  //     }
  //   }
  // }

  // getWeekWiseEventList(String leagueId, String week) async {
  //   try {
  //     isLoading.value = false;
  //     var weekEventList = await RestService.getWeekWiseEventApi(leagueId, week);
  //     if (weekEventList.weekDaysOrder != []) {
  //       weekEventModel.value.weekDaysOrder?.forEach((element) {
  //         element.count = 0;
  //       });
  //       weekEventModel.value = weekEventList;
  //       weekEventModel.refresh();
  //       for (int i = 0;
  //           i < (weekEventModel.value.weekDaysOrder?.length ?? 0);
  //           i++) {
  //         var count = weekEventModel.value.schedule
  //             ?.where((p0) =>
  //                 weekEventModel.value.weekDaysOrder?[i].name ==
  //                 DateFormat("E")
  //                     .format(DateTime.parse(
  //                         p0.datetime ?? DateTime.now().toString()))
  //                     .toUpperCase())
  //             .toList()
  //             .length;
  //         weekEventModel.value.weekDaysOrder?[i].count += count ?? 0;
  //         weekEventModel.refresh();
  //         navToSpecificTab(index: currentIndex.value);
  //       }
  //     } else {

  //     }
  //     isLoading.value = true;
  //     isLoading.refresh();
  //   } catch (e) {
  //     isLoading.value = true;
  //     isLoading.refresh();

  //   }
  // }

  // getScheduleCalendarCount({String? currentMonthDate}) async {
  //   try {
  //     isCalendarLoad.value = false;
  //     isLoading.value = false;
  //     var calendarCountList = await RestService.leagueCalendarCount(
  //         leagueId.value, currentMonthDate);
  //     if (calendarCountList.events != []) {
  //       scheduleCalendarModel.value = calendarCountList;
  //       scheduleCalendarModel.refresh();
  //       if (DateTime.now().day.toString().length == 1) {
  //         getDateWiseEventList(
  //             "${DateTime.now().year}${DateTime.now().month.toString().length == 1 ? "0${DateTime.now().month}" : "${DateTime.now().month}"}${0}${DateTime.now().day.toString()}",
  //             false);
  //       } else {
  //         getDateWiseEventList(
  //             "${DateTime.now().year}${DateTime.now().month.toString().length == 1 ? "0${DateTime.now().month}" : "${DateTime.now().month}"}${DateTime.now().day}",
  //             false);
  //       }
  //     } else {

  //     }
  //     isCalendarLoad.value = true;
  //     isCalendarLoad.refresh();
  //     isLoading.value = true;
  //     isLoading.refresh();
  //   } catch (e) {
  //     isCalendarLoad.value = true;
  //     isCalendarLoad.refresh();
  //     isLoading.value = true;
  //     isLoading.refresh();

  //   }
  // }

  // getDateWiseEventList(String date, bool isLoading) async {
  //   try {

  //     weekEventModel.value.schedule = [];
  //     weekEventModel.refresh();
  //     var dateWiseList =
  //         await RestService.getDateWiseEventList(leagueId.value, date);
  //     if (dateWiseList.schedule != []) {
  //       weekEventModel.value = dateWiseList;
  //       weekEventModel.refresh();
  //     } else {

  //     }

  //   } catch (e) {

  //   }
  // }

  // dayWiseFilter(int i) {
  //   filterEvent.value = [];
  //   filterEvent.refresh();
  //   filterEvent.value = (weekEventModel.value.schedule ?? [])
  //       .where((p0) =>
  //           weekEventModel.value.weekDaysOrder?[i].name ==
  //           DateFormat("E")
  //               .format(DateTime.parse(p0.datetime ?? ""))
  //               .toUpperCase())
  //       .toList();
  //   filterEvent.refresh();
  // }

  @override
  void onInit() {
    // leagueId.value = Get.arguments[0].toString();
    leagueId.refresh();
    // sportId.value = Get.arguments[1].toString();
    sportId.refresh();
    // box = Hive.box('weekModel');
    Future.delayed(
      Duration.zero,
      () {
        // getSchedulWeekList(sportId.value);
      },
    );
    // getDataInHive();
    super.onInit();
  }

  // getDataInHive() async {
  //   var data = await box.get("weekList");
  //   log("-----------${data.toString()}");

  //   for (var element in data) {
  //     log("-----------$element");
  //   }
  // }

  // Future addWeekModel({required WeekModelHive userModel}) async {
  //   await box.add(userModel);
  // }

  @override
  void dispose() {
    // scrollController.value.dispose();
    // weekListController.dispose();
    super.dispose();
  }
}
