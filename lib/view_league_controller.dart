import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ios_demo/const.dart';
import 'package:ios_demo/league_details_model.dart';
import 'package:ios_demo/schedule_controller.dart';
import 'package:ios_demo/schedule_widget.dart';

class ViewMyLeagueController extends GetxController
    with GetTickerProviderStateMixin {
  // Rx<ScrollController> scrollController =
  //     ScrollController(initialScrollOffset: 0).obs;
  Rx<LeagueDetailsModel> leagueData = LeagueDetailsModel().obs;
  var leagueId;
  var sportId;
  RxBool isClaimToken = false.obs;

  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      if (Get.arguments != null) {
        leagueId = Get.arguments.first;
        sportId = Get.arguments.last;
      }
      Future.delayed(const Duration(seconds: 1), () {
        // scrollController.value.addListener(() {
        //   scrollController.refresh();
        // });
      });
      getLeagueDetails();
      // Get.find<ScheduleController>().getSchedulWeekList(sportId.toString());
    });
  }

  @override
  void onClose() {
    // scrollController.value.dispose();
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // scrollController.value.dispose();
  }

  void scrollToPosition(int index) {
    // if (scrollController.value.hasClients) {
    //   scrollController.value.animateTo(
    //     335.0.h,
    //     duration: const Duration(seconds: 1),
    //     curve: Curves.easeInOut,
    //   );
    // }
  }

  getTab(name) {
    if (name == "LEAGUE") {
      return Container();
    } else if (name == "MY DRAFT") {
      return Container();
      // MyDraftController
    } else if (name == "TEAMS") {
      // DraftOrderController
      return Container();
    } else if (name == "SCHEDULE") {
      Get.put(ScheduleController());
      return const ScheduleWidget();
    } else if (name == "CHAT") {
      // ChatTabController
      return Container();
    } else if (name == "PLAYOFFS") {
      // PlayOffController
      return Container();
    } else {
      return Container();
    }
  }

  getLeagueDetails() async {
    try {
      leagueData.value = LeagueDetailsModel.fromJson(viewmyleagueres);
      tabController = TabController(
          length: (leagueData.value.data?.leagueDetails?.tabsList?.length ?? 0),
          vsync: this);

      Get.back();
      if (!(leagueData.value.success ?? false)) {}
    } catch (e) {
      Get.back();
    }
  }

  getPlayOffTabToken(String typeOfToken) async {
    try {
      leagueData.refresh();
    } catch (e) {
      Get.back();
    }
  }
}
