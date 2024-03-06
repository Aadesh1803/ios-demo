import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ios_demo/app_colors.dart';
import 'package:ios_demo/schedule_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

class ScheduleWidget extends GetView<ScheduleController> {
  const ScheduleWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: controller.isloading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    30.h.heightBox,
                    !controller.showCalendar.value
                        ? Container(
                            height: 32,
                            width: Get.size.width,
                            alignment: Alignment.center,
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              // controller: controller.scrollController.value,
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    controller.currentIndex.value = index;
                                    // controller.scrollOffset = controller
                                    //     .scrollController.value.offset;
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 105.sp,
                                    color: Colors.transparent,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Week $index",
                                          style: TextStyle(
                                              color: controller
                                                          .currentIndex.value ==
                                                      index
                                                  ? Colors.white
                                                  : Colors.white
                                                      .withOpacity(0.56),
                                              fontSize: 14),
                                        ),
                                        5.h.heightBox,
                                        Container(
                                          height: 3.sp,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.sp, vertical: 5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color:
                                                controller.currentIndex.value ==
                                                        index
                                                    ? const Color(0xff7357FF)
                                                    : Colors.transparent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : const SizedBox(),
                    if (!controller.showCalendar.value)
                      Divider(
                        height: 0.5,
                        color: Colors.white.withOpacity(0.45),
                      ),
                    const SizedBox(),
                    10.h.heightBox,
                    if (controller.isLoading.value)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          controller.showCalendar.value
                              ? Image.asset(
                                  "assets/icons/close.png",
                                  height: 20.sp,
                                  width: 20.sp,
                                  color: const Color(0xff7357FF),
                                )
                              : Image.asset(
                                  "assets/icons/calendar_today.png",
                                  height: 20.sp,
                                  width: 20.sp,
                                ),
                          5.w.widthBox,
                          Text(
                            "Calendar".toUpperCase(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: controller.showCalendar.value
                                  ? const Color(0xff7357FF)
                                  : Colors.white.withOpacity(0.56),
                            ),
                          ),
                          10.w.widthBox,
                        ],
                      ).onTap(() {
                        controller.showCalendar.value =
                            !controller.showCalendar.value;
                        controller.selectedWeekDayOrder.value = 0;

                        controller.isCheck.value = true;
                        controller.isCheck.refresh();
                      }),
                    const SizedBox(),
                    8.h.heightBox,
                    ListView.builder(
                      // controller: controller.weekListController,
                      shrinkWrap: true,
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        var data = DateTime.now().toString();
                        return Column(
                          key: GlobalObjectKey(data),
                          children: [
                            buildShiduleWidget(
                              hometeam1: true,
                              hometeam2: false,
                              status: "Status",
                              tvStationImg:
                                  "https://mypyfn.blob.core.windows.net/desktop-pictures/image/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWl6ejAuMTc2MTA0MjI2NTk0Nzc4NTMuanBnIiwidmFsdWUiOiJmNmI4NDU1Y2UzNzIzZjJhNjQxNDMxZTBlNmVmODc2MjA1MWM4YjQ0ZWJhZTI1N2RjYzg0MTNjODI2NmMxZjg4In0.S0VW0ojxoHdiapA_ZkzAGBboUh9B0RgB91oyihazJ1A",
                              team1Image:
                                  "https://mypyfn.blob.core.windows.net/desktop-pictures/image/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWl6ejAuMTc2MTA0MjI2NTk0Nzc4NTMuanBnIiwidmFsdWUiOiJmNmI4NDU1Y2UzNzIzZjJhNjQxNDMxZTBlNmVmODc2MjA1MWM4YjQ0ZWJhZTI1N2RjYzg0MTNjODI2NmMxZjg4In0.S0VW0ojxoHdiapA_ZkzAGBboUh9B0RgB91oyihazJ1A",
                              team1Score: "2",
                              team1name: "Team 1",
                              playerConferenceImage:
                                  "https://mypyfn.blob.core.windows.net/desktop-pictures/image/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWl6ejAuMTc2MTA0MjI2NTk0Nzc4NTMuanBnIiwidmFsdWUiOiJmNmI4NDU1Y2UzNzIzZjJhNjQxNDMxZTBlNmVmODc2MjA1MWM4YjQ0ZWJhZTI1N2RjYzg0MTNjODI2NmMxZjg4In0.S0VW0ojxoHdiapA_ZkzAGBboUh9B0RgB91oyihazJ1A",
                              team2name: "Team 2",
                              team2Image:
                                  "https://mypyfn.blob.core.windows.net/desktop-pictures/image/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWl6ejAuMTc2MTA0MjI2NTk0Nzc4NTMuanBnIiwidmFsdWUiOiJmNmI4NDU1Y2UzNzIzZjJhNjQxNDMxZTBlNmVmODc2MjA1MWM4YjQ0ZWJhZTI1N2RjYzg0MTNjODI2NmMxZjg4In0.S0VW0ojxoHdiapA_ZkzAGBboUh9B0RgB91oyihazJ1A",
                              team2Score: "0",
                              opponentConferenceImage:
                                  "https://mypyfn.blob.core.windows.net/desktop-pictures/image/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWl6ejAuMTc2MTA0MjI2NTk0Nzc4NTMuanBnIiwidmFsdWUiOiJmNmI4NDU1Y2UzNzIzZjJhNjQxNDMxZTBlNmVmODc2MjA1MWM4YjQ0ZWJhZTI1N2RjYzg0MTNjODI2NmMxZjg4In0.S0VW0ojxoHdiapA_ZkzAGBboUh9B0RgB91oyihazJ1A",
                              playerConfColor: "#FA4E29",
                              opponentConfColor: "#6A1908",
                              playerDraftsyPoints: "12",
                              playerPointsBreakDown: [],
                              opponentPointsBreakDown: [],
                              opponentDraftsyPoints: "5",
                              dateTime: DateTime.now().toString(),
                              playerTeamRank: "0",
                              opponentTeamRank: "0",
                              team2OnTap: () {
                                // TeamModel team = TeamModel(
                                //   teamConferenceId: int.parse(
                                //     controller
                                //         .filterEvent[index]
                                //         .opponentTeamConferenceID
                                //         .toString(),
                                //   ),
                                //   teamId: int.parse(controller
                                //       .filterEvent[index]
                                //       .opponentTeamID
                                //       .toString()),
                                //   teamImage: controller
                                //           .filterEvent[index]
                                //           .opponentTeamImage ??
                                //       "",
                                //   teamName: controller
                                //           .filterEvent[index]
                                //           .opponentTeamName ??
                                //       "",
                                //   teamRank: "",
                                //   time: DateTime.now(),
                                // );
                                // Get.toNamed(
                                //   Routes.viewTeamScreen,
                                //   arguments: team,
                                // );
                              },
                              team1OnTap: () {
                                // TeamModel team = TeamModel(
                                //   teamConferenceId: int.parse(
                                //     controller
                                //         .filterEvent[index]
                                //         .playerTeamConferenceID
                                //         .toString(),
                                //   ),
                                //   teamId: int.parse(controller
                                //       .filterEvent[index]
                                //       .playerTeamID
                                //       .toString()),
                                //   teamImage: controller
                                //           .filterEvent[index]
                                //           .playerTeamImage ??
                                //       "",
                                //   teamName: controller
                                //           .filterEvent[index]
                                //           .playerTeamName ??
                                //       "",
                                //   teamRank: "",
                                //   time: DateTime.now(),
                                // );
                                // Get.toNamed(
                                //   Routes.viewTeamScreen,
                                //   arguments: team,
                                // );
                              },
                            ),
                            10.h.heightBox,
                          ],
                        );
                      },
                    )
                  ],
                ),
        ),
      ),
    );
  }
}

class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, -55.sp);

    path.lineTo(size.width - 80.sp, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => true;
}
