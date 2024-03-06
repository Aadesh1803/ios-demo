import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ios_demo/app_colors.dart';
import 'package:ios_demo/schedule_controller.dart';
import 'package:ios_demo/view_league_controller.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewMyLeagueScreen extends GetView<ViewMyLeagueController> {
  ViewMyLeagueScreen({super.key});

  @override
  ViewMyLeagueController controller = Get.put(ViewMyLeagueController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // var chatControllr = Get.find<ChatListController>();
        // chatControllr.chatPage = 1;
        // chatControllr.chatPagingController.itemList = [];
        // chatControllr.userchatList.value = [];
        // chatControllr.getChatList(isload: true);
        // Get.delete<LeaguesTabController>();
        // Get.delete<PlayOffController>();
        // Get.delete<ChatTabController>();
        // Get.delete<DraftOrderController>();
        // Get.delete<MyDraftController>();
        // Get.delete<ViewMyLeagueController>();
        // Get.offNamedUntil(Routes.bottombarScreen, (route) => true);
        return Future.value(true);
      },
      child: Obx(() {
        var leagueDetails = controller.leagueData.value.data?.leagueDetails;
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/GameMenuBG.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: !(controller.leagueData.value.success ?? false)
                ? Container()
                : Stack(
                    children: [
                      Transform.scale(
                        scaleX: 1.1,
                        scaleY: 1.1,
                        child: Container(
                          height: Get.height * 0.17,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    leagueDetails?.backgroundImage ?? "",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3)),
                        ),
                      ),
                      DefaultTabController(
                        length: leagueDetails?.tabsList?.length ?? 0,
                        child: NestedScrollView(
                          // controller: controller.scrollController.value,
                          headerSliverBuilder:
                              (BuildContext context, bool innerBoxIsScrolled) {
                            return <Widget>[
                              100 < (300)
                                  ? SliverAppBar(
                                      forceElevated: innerBoxIsScrolled,
                                      systemOverlayStyle:
                                          const SystemUiOverlayStyle(
                                              statusBarColor:
                                                  Colors.transparent,
                                              statusBarIconBrightness:
                                                  Brightness.light),
                                      key: const PageStorageKey<String>("name"),
                                      pinned: true,
                                      leading:
                                          Image.asset("assets/icons/back.png")
                                              .onTap(() {}),
                                      bottom: PreferredSize(
                                        preferredSize: Size(Get.width, 50),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: TabBar(
                                            controller:
                                                controller.tabController,
                                            tabAlignment: TabAlignment.start,
                                            onTap: (value) {
                                              if (leagueDetails
                                                      ?.tabsList?[value].name ==
                                                  "SCHEDULE") {
                                                // Get.find<
                                                //         ScheduleController>()
                                                //     .navToSpecificTab();

                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  // Get.find<
                                                  //         ScheduleController>()
                                                  //     .scrollController
                                                  //     .value
                                                  //     .jumpTo(
                                                  //       Get.find<
                                                  //               ScheduleController>()
                                                  //           .scrollOffset,
                                                  //     );
                                                  // Get.find<
                                                  //         ScheduleController>()
                                                  //     .scrollController
                                                  //     .refresh();
                                                });
                                              }
                                            },
                                            isScrollable: true,
                                            labelStyle: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                            unselectedLabelStyle:
                                                const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                            indicatorWeight: 4,
                                            indicatorColor:
                                                const Color(0xff7357FF),
                                            tabs: [
                                              for (int i = 0;
                                                  i <
                                                      (leagueDetails?.tabsList
                                                              ?.length ??
                                                          0);
                                                  i++)
                                                Tab(
                                                  text: leagueDetails
                                                      ?.tabsList?[i].name,
                                                )
                                            ],
                                          ),
                                        ).pOnly(left: 5.sp),
                                      ),
                                      expandedHeight:
                                          (leagueDetails?.isPLayoffs ?? false)
                                              ? (leagueDetails?.playoffStatus
                                                          ?.isClaimed ??
                                                      false)
                                                  ? (260.0 + 35.h)
                                                  : 620.sp
                                              : (260.0 + 35.h),
                                      actions: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "005500",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp,
                                              ),
                                            )).onTap(() {}),
                                        Image.asset(
                                          "assets/images/coins.png",
                                          width: 40,
                                        ).onTap(() {})
                                      ],
                                      backgroundColor: Colors.transparent,
                                      flexibleSpace: FlexibleSpaceBar(
                                        expandedTitleScale: 1,
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(500),
                                              child: CachedNetworkImage(
                                                imageUrl: leagueDetails
                                                        ?.gameTypeIcon ??
                                                    "",
                                                height: 30,
                                                width: 30,
                                                placeholder: (context, url) =>
                                                    const Text("a"),
                                                errorListener: (value) =>
                                                    const Text("a"),
                                              ),
                                            ),
                                            12.widthBox,
                                            Text(leagueDetails?.leagueName ??
                                                ""),
                                          ],
                                        ),
                                        background: Stack(
                                          children: [
                                            Transform.scale(
                                              scaleX: 1.1,
                                              scaleY: 1.1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                          leagueDetails
                                                                  ?.backgroundImage ??
                                                              "",
                                                        ),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.45)),
                                              ),
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  40.heightBox,
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: AppColors
                                                                .purewhite,
                                                            width: 2.w)),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              500),
                                                      child: CachedNetworkImage(
                                                        imageUrl: leagueDetails
                                                                ?.leagueImageUrl ??
                                                            "",
                                                        height: 80,
                                                        width: 80,
                                                        placeholder:
                                                            (context, url) =>
                                                                const Text("a"),
                                                        errorListener:
                                                            (value) =>
                                                                const Text("a"),
                                                      ),
                                                    ),
                                                  ),
                                                  1.w.widthBox,
                                                  ShaderMask(
                                                    shaderCallback:
                                                        (Rect bounds) {
                                                      return LinearGradient(
                                                        colors: [
                                                          Colors.white,
                                                          Colors.white
                                                              .withOpacity(0),
                                                        ],
                                                        stops: const [
                                                          0.6,
                                                          0.99
                                                        ],
                                                        begin:
                                                            Alignment.topCenter,
                                                        end: Alignment
                                                            .bottomCenter,
                                                      ).createShader(bounds);
                                                    },
                                                    child: Text(
                                                      leagueDetails
                                                              ?.leagueName ??
                                                          "",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 26.sp,
                                                        color: const Color(
                                                            0xffffffff),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  10.heightBox,
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: leagueDetails
                                                                  ?.gameTypeIcon ??
                                                              "",
                                                          height: 30,
                                                          width: 30,
                                                          placeholder: (context,
                                                                  url) =>
                                                              const Text("a"),
                                                          errorListener:
                                                              (value) =>
                                                                  const Text(
                                                                      "a"),
                                                        ),
                                                      ),
                                                      8.widthBox,
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: leagueDetails
                                                                  ?.sportIconRound ??
                                                              "",
                                                          height: 30,
                                                          width: 30,
                                                          placeholder: (context,
                                                                  url) =>
                                                              const Text("a"),
                                                          errorListener:
                                                              (value) =>
                                                                  const Text(
                                                                      "a"),
                                                        ),
                                                      ),
                                                      8.widthBox,
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: leagueDetails
                                                                  ?.sportTypeIcon ??
                                                              "",
                                                          height: 30,
                                                          width: 30,
                                                          placeholder: (context,
                                                                  url) =>
                                                              const Text("a"),
                                                          errorListener:
                                                              (value) =>
                                                                  const Text(
                                                                      "a"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Visibility(
                                                    visible: (leagueDetails
                                                                ?.isPLayoffs ??
                                                            false) &&
                                                        !(leagueDetails
                                                                ?.playoffStatus
                                                                ?.isClaimed ??
                                                            true),
                                                    child: CachedNetworkImage(
                                                      imageUrl: leagueDetails
                                                              ?.playoffStatus
                                                              ?.playoffStatusImage ??
                                                          "",
                                                      height: 150.sp,
                                                      width: 150.sp,
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: (leagueDetails
                                                                ?.isPLayoffs ??
                                                            false) &&
                                                        !(leagueDetails
                                                                ?.playoffStatus
                                                                ?.isClaimed ??
                                                            true),
                                                    child: Text(
                                                      leagueDetails
                                                              ?.playoffStatus
                                                              ?.playoffStatusText ??
                                                          "",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 22.sp,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: (leagueDetails
                                                            ?.isPLayoffs ??
                                                        false),
                                                    child: Text(
                                                      leagueDetails
                                                              ?.playoffStatus
                                                              ?.playoffStatusDescription ??
                                                          "",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: !(leagueDetails
                                                                ?.playoffStatus
                                                                ?.isClaimed ??
                                                            true) &&
                                                        (leagueDetails
                                                                ?.isPLayoffs ??
                                                            false),
                                                    child: Container(
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10))),
                                                      width: double.infinity,
                                                      height: 70,
                                                      child: Container(
                                                        height: 50,
                                                        transform:
                                                            Matrix4.skewX(-.5),
                                                        decoration:
                                                            const BoxDecoration(
                                                                color: Color(
                                                                    0xff7357FF)),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                          transform:
                                                              Matrix4.skewX(.5),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Claim my ${leagueDetails?.playoffStatus?.token}"
                                                                    .toUpperCase(),
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Image.asset(
                                                                "assets/images/coins.png",
                                                                width: 40,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ).onTap(() async {
                                                        controller
                                                            .getPlayOffTabToken(
                                                                (leagueDetails
                                                                            ?.isLeagueWinner ??
                                                                        false)
                                                                    ? "1"
                                                                    : "0");
                                                        controller.isClaimToken
                                                            .value = true;
                                                        controller.leagueData
                                                            .refresh();
                                                        Future.delayed(
                                                          const Duration(
                                                              seconds: 3),
                                                          () {
                                                            controller
                                                                .isClaimToken
                                                                .value = false;
                                                            leagueDetails
                                                                ?.playoffStatus
                                                                ?.isClaimed = true;
                                                            controller
                                                                .leagueData
                                                                .refresh();
                                                            controller
                                                                .leagueData
                                                                .refresh();
                                                          },
                                                        );
                                                      }).pSymmetric(
                                                          v: 10, h: 40),
                                                    ),
                                                  ),
                                                  // !(leagueDetails?.playoffStatus
                                                  //                 ?.isClaimed ??
                                                  //             true) &&
                                                  //         (leagueDetails
                                                  //                 ?.isPLayoffs ??
                                                  //             false)
                                                  //     ? 10.h.heightBox
                                                  //     : 0.heightBox,
                                                  10.h.heightBox,
                                                  IntrinsicHeight(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                colors: [
                                                                  Colors
                                                                      .transparent,
                                                                  const Color(
                                                                          0xff4BCB00)
                                                                      .withOpacity(
                                                                          0.56),
                                                                ],
                                                                begin: Alignment
                                                                    .centerLeft,
                                                                end: Alignment
                                                                    .centerRight,
                                                              )),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Image.asset(
                                                                      "assets/icons/gray_trophy.png"),
                                                                  8.widthBox,
                                                                  Text(
                                                                    "SEASON RANK ",
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(
                                                                            0.56),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ).pSymmetric(
                                                                      v: 8),
                                                                  Text(
                                                                    leagueDetails
                                                                            ?.seasonRank ??
                                                                        "",
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ).pSymmetric(
                                                                      v: 8),
                                                                ],
                                                              ).pSymmetric(
                                                                  v: 8)),
                                                        ),
                                                        Container(
                                                          width: 2,
                                                          color: Colors.white,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                colors: [
                                                                  Colors
                                                                      .transparent,
                                                                  const Color(
                                                                          0xff823BC4)
                                                                      .withOpacity(
                                                                          0.56),
                                                                ],
                                                                begin: Alignment
                                                                    .centerRight,
                                                                end: Alignment
                                                                    .centerLeft,
                                                              )),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Image.asset(
                                                                      "assets/icons/gray_calender.png"),
                                                                  8.widthBox,
                                                                  Text(
                                                                    "WEEKLY RANK",
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(
                                                                            0.56),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ).pSymmetric(
                                                                      v: 8),
                                                                  5.w.widthBox,
                                                                  Text(
                                                                    leagueDetails
                                                                            ?.weeklyRank ??
                                                                        "",
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ).pSymmetric(
                                                                      v: 8),
                                                                ],
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  (leagueDetails?.isPLayoffs ??
                                                              false) &&
                                                          !(leagueDetails
                                                                  ?.playoffStatus
                                                                  ?.isClaimed ??
                                                              true)
                                                      ? 10.h.heightBox
                                                      : 20.h.heightBox
                                                ],
                                              ),
                                            ),
                                            controller.isClaimToken.value
                                                ? Positioned(
                                                    left: 100,
                                                    right: 0,
                                                    bottom: 120,
                                                    child: SizedBox(
                                                      height: 520,
                                                      child: Lottie.asset(
                                                          "assets/lotties/ClaimAllToken.json",
                                                          reverse: false),
                                                    ),
                                                  )
                                                : const SizedBox()
                                          ],
                                        ),
                                        centerTitle: true,
                                        titlePadding: const EdgeInsets.only(
                                            bottom: 60, top: 0),
                                      ),
                                    )
                                  : SliverAppBar(
                                      systemOverlayStyle:
                                          const SystemUiOverlayStyle(
                                              statusBarColor:
                                                  Colors.transparent,
                                              statusBarIconBrightness:
                                                  Brightness.light),
                                      expandedHeight:
                                          (leagueDetails?.isPLayoffs ?? false)
                                              ? (leagueDetails?.playoffStatus
                                                          ?.isClaimed ??
                                                      true)
                                                  ? (260.0 + 35.h)
                                                  : 620.sp
                                              : (260.0 + 35.h),
                                      pinned: true,
                                      automaticallyImplyLeading: false,
                                      centerTitle: true,
                                      forceElevated: innerBoxIsScrolled,
                                      key: const PageStorageKey<String>("name"),
                                      leading:
                                          Image.asset("assets/icons/back.png")
                                              .onTap(() {}),
                                      titleTextStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(500),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  leagueDetails?.gameTypeIcon ??
                                                      "",
                                              height: 30,
                                              width: 30,
                                              placeholder: (context, url) =>
                                                  const Text("a"),
                                              errorListener: (value) =>
                                                  const Text("a"),
                                            ),
                                          ),
                                          12.widthBox,
                                          Flexible(
                                            flex: 4,
                                            child: Text(
                                              leagueDetails?.leagueName ?? "",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "50021",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp,
                                              ),
                                            )).onTap(() {}),
                                        Image.asset(
                                          "assets/images/coins.png",
                                          width: 40,
                                        ).onTap(() {
                                          // controller.getData();
                                        })
                                      ],
                                      flexibleSpace: FlexibleSpaceBar(
                                        expandedTitleScale: 1,
                                        centerTitle: false,
                                        titlePadding: EdgeInsets.zero,
                                        title: Transform.scale(
                                          scaleX: 1.1,
                                          scaleY: 1.1,
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  leagueDetails
                                                          ?.backgroundImage ??
                                                      "",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      bottom: PreferredSize(
                                        preferredSize: Size(Get.width, 50),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: TabBar(
                                            controller:
                                                controller.tabController,
                                            isScrollable: true,
                                            onTap: (value) {
                                              if (leagueDetails
                                                      ?.tabsList?[value].name ==
                                                  "SCHEDULE") {
                                                // Get.find<
                                                //         ScheduleController>()
                                                //     .navToSpecificTab();
                                                debugModePrint(Get.find<
                                                        ScheduleController>()
                                                    .scrollOffset
                                                    .toString());
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  // Get.find<
                                                  //         ScheduleController>()
                                                  //     .scrollController
                                                  //     .value
                                                  //     .jumpTo(
                                                  //       Get.find<
                                                  //               ScheduleController>()
                                                  //           .scrollOffset,
                                                  //     );
                                                  // Get.find<
                                                  //         ScheduleController>()
                                                  //     .scrollController
                                                  //     .refresh();
                                                });
                                              } else if (leagueDetails
                                                      ?.tabsList?[value].name ==
                                                  "CHAT") {
                                                Future.delayed(
                                                    const Duration(seconds: 1),
                                                    () {});
                                              }
                                            },
                                            tabAlignment: TabAlignment.start,
                                            labelStyle: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                            unselectedLabelStyle:
                                                const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                            indicatorWeight: 4,
                                            indicatorColor:
                                                const Color(0xff7357FF),
                                            tabs: [
                                              for (int i = 0;
                                                  i <
                                                      (leagueDetails?.tabsList
                                                              ?.length ??
                                                          0);
                                                  i++)
                                                Tab(
                                                  text: leagueDetails
                                                      ?.tabsList?[i].name,
                                                )
                                            ],
                                          ).pOnly(left: 5.sp),
                                        ),
                                      ),
                                    ),
                            ];
                          },
                          body: Column(
                            children: [
                              Expanded(
                                child: TabBarView(
                                  controller: controller.tabController,
                                  children: [
                                    for (int i = 0;
                                        i <
                                            (leagueDetails?.tabsList ?? [])
                                                .length;
                                        i++)
                                      controller.getTab(
                                          leagueDetails?.tabsList?[i].name)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      }),
    );
  }
}
