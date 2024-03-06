import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ios_demo/expansion_tile.dart' as expansion;

class AppColors {
  static const primaryColor = Color(0xff5646A3);
  static const orange = Color(0xffEF7C24);
  static const purewhite = Color(0xffFFFFFF);
  static const secondaryColor = Color(0xff7160C7);
  static const additionalColor = Color(0xff8282F0);
  static const titlefontColor = Color(0xff8282F0);
  static const bodyfontColor = Color(0xff6B6C77);
  static const metafontColor = Color(0xffACB8C3);
  static const disableColor = Color(0xffE0E0E0);
  static const whiteColor = Color(0xffDFDFDF);
  static const lightGrayish = Color(0xffF9F9F9);
  static const black = Color(0xff222222);
  static const mediumGray = Color(0xffEBEBEB);
  static const lightPurple = Color(0xffE6E6FD);
  static const gray = Color(0xffF1F1F1);
  static const borderLight = Color(0xffEAEAEA);
  static const borderMedium = Color(0xffDFDFDF);
  static const red = Color(0xffEB5757);
  static const green = Color(0xff63B65C);
  static const bottomIconColor = Color(0xFF545466);
  static const darkblue = Color(0xff7860f2);
  static const puregreyappbarcolor = Color(0xffF1F1F1);
  static const dividergrey = Color(0xffB3B3B3);
  static const greenbutton = Color(0xffA7F8A0);
  static const yellowcolor = Color(0xffFFA800);
  static const textpurplecolor = Color(0xff7357FF);
  static const lightpista = Color(0xff00FFD1);
  static const mainGradient = LinearGradient(
    colors: [
      Color(0xff5646A3),
      Color(0xff7160C7),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const thirdGrad = LinearGradient(
    colors: [
      Color(0xff1061A5),
      Color(0xff1061A5),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const orangeGradient = LinearGradient(
    colors: [
      Color(0xFFF45B20),
      Color(0xFFF87E50),
    ],
    begin: Alignment(-1, 0.09),
    end: Alignment(1.00, -0.09),
  );
  static const borderorangeGradient = LinearGradient(
    colors: [
      Color(0xFFF6981A),
      Color(0xFFEC641D),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const borderblueGradient = LinearGradient(
    colors: [
      Color(0xFF00AFFF),
      Color(0xFF0054FF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const bordervilotGradient = LinearGradient(
    colors: [
      Color(0xFFAB82FF),
      Color(0xFF533FFF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const bordercancelGradient = LinearGradient(
    colors: [
      Color(0xFFC3C0BE),
      Color(0xFF626262),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const newcancelGradient = LinearGradient(
    colors: [
      Color(0xAE637680),
      Color(0xFF2D3940),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

var style18BlackW600 = TextStyle(
    color: AppColors.black, fontSize: 18.sp, fontWeight: FontWeight.w600);

var style15BlackW600 = TextStyle(
    color: AppColors.black, fontSize: 15.sp, fontWeight: FontWeight.w600);

var styleBlack600 = TextStyle(
    color: const Color.fromARGB(255, 88, 53, 53),
    fontSize: 18.sp,
    fontWeight: FontWeight.w600);

var style12WhiteW600 = TextStyle(
  fontWeight: FontWeight.w600,
  color: AppColors.purewhite,
  fontSize: 12.sp,
);

var style12BlackW600 = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontSize: 12.sp,
);

var style16WhiteW400 = const TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF));

var style16WhiteBold = const TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF));

var style16BlackW400 = TextStyle(
    color: AppColors.black, fontSize: 16.sp, fontWeight: FontWeight.w400);
var style14WhiteW500 = const TextStyle(
  fontSize: 14,
  color: Color(0xffffffff),
  fontWeight: FontWeight.w500,
);

var style14WhiteW700 = const TextStyle(
  fontSize: 14,
  color: Color(0xffffffff),
  fontWeight: FontWeight.w700,
);

var style14WhiteBold = const TextStyle(
  fontSize: 14,
  color: Color(0xffffffff),
  fontWeight: FontWeight.bold,
);

var style28WhiteW700 = TextStyle(
  color: const Color(0xffFFFFFF),
  fontSize: 28.sp,
  fontWeight: FontWeight.w700,
);

var style24BlackBold = TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.sp);

var style22WhiteW500 = TextStyle(
    color: AppColors.purewhite, fontSize: 22.sp, fontWeight: FontWeight.w500);

var styleBlack16 = TextStyle(
  fontSize: 16.sp,
  color: AppColors.black,
);
var stylePrimary14 = TextStyle(
  color: AppColors.primaryColor,
  fontSize: 14.sp,
);

var styleWhite16 = TextStyle(
  fontSize: 16.sp,
  color: Colors.white,
);

var styleBlack12Bold = TextStyle(
    color: AppColors.black, fontSize: 12.sp, fontWeight: FontWeight.bold);

var style18BlackW700 = TextStyle(
    color: AppColors.black, fontSize: 18.sp, fontWeight: FontWeight.w700);

var style18WhiteW700 = TextStyle(
    color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w700);

var style18WhiteW600 = TextStyle(
    color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w600);

var style18White = TextStyle(fontSize: 18.sp, color: Colors.white);

var style18WhiteBold = TextStyle(
    fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold);

var style18BlackBold = TextStyle(
    fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.bold);

var style14Black = TextStyle(fontSize: 14.sp, color: Colors.black);
var style14BlackBold = TextStyle(
    fontSize: 14.sp, color: Colors.black, fontWeight: FontWeight.bold);
var style14BlackW600 = TextStyle(
    fontSize: 14.sp, color: Colors.black, fontWeight: FontWeight.w600);

var style14Primary = TextStyle(
  color: AppColors.primaryColor,
  fontSize: 14.sp,
);

var style14WhiteW600 = TextStyle(
  color: Colors.white,
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
);

var style15RedW500 = TextStyle(
    color: AppColors.red, fontWeight: FontWeight.w500, fontSize: 15.sp);

var style16RedW600 = TextStyle(
    color: AppColors.red, fontWeight: FontWeight.w600, fontSize: 16.sp);

var style20Bold = TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp);

var style11WhiteBold = const TextStyle(
    color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold);

var styleWhiteVold =
    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

var styleWhite22 = const TextStyle(color: Colors.white, fontSize: 22);

final emailRefExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

getColor(String? leagueColor) {
  leagueColor ??= "0xff7160C7";
  String hexColor = leagueColor.length >= 7 && leagueColor != "#A3EO9E"
      ? leagueColor.substring(1, 7)
      : "FFFFFF"; // Default color if leagueColor is invalid

  int parsedColor = int.tryParse(hexColor, radix: 16) ??
      0xff7160C7; // Default to white if parsing fails

  Color color = Color(parsedColor + 0xFF000000);
  return color;
}

placeHolderImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(500),
    child: Container(
        color: Colors.black,
        child: Image.asset(
          "assets/images/imageplaceholder.png",
          height: 50,
          width: 50,
        ).p(8)),
  );
}

profileImageWidget(
  String image,
  double height,
  double width,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(500),
    child: CachedNetworkImage(
      imageUrl: image,
      height: height,
      fit: BoxFit.fill,
      width: width,
      errorWidget: (context, url, error) => placeHolderImage(),
      placeholder: (context, url) => placeHolderImage(),
    ),
  );
}

debugModePrint(message) {
  if (kDebugMode) {
    debugPrint(message.toString());
  }
}

buildShiduleWidget({
  required String status,
  required String team1Score,
  required String team1name,
  void Function()? team1OnTap,
  void Function()? team2OnTap,
  required String team1Image,
  required String playerConferenceImage,
  required String tvStationImg,
  required String team2Score,
  required String team2name,
  required String team2Image,
  required bool hometeam1,
  required bool hometeam2,
  required String opponentConferenceImage,
  required String playerConfColor,
  required String opponentConfColor,
  required String playerDraftsyPoints,
  required String opponentDraftsyPoints,
  required List<dynamic> playerPointsBreakDown,
  required List<dynamic> opponentPointsBreakDown,
  required String dateTime,
  required String playerTeamRank,
  required String opponentTeamRank,
  bool? isCurrentPlayer,
  bool? isOpponentMe,
}) {
  RxBool isExpanded = false.obs;
  expansion.ExpansionTileController expansionTileController =
      expansion.ExpansionTileController();
  // GlobalKey key = GlobalKey();
  RxBool isTeamChange = true.obs;

  return Obx(
    () => Column(
      children: [
        Theme(
          data: Theme.of(Get.context!).copyWith(
              dividerColor: Colors.transparent,
              splashColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent),
          child: ListTileTheme.merge(
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: isExpanded.value ? -5 : -1,
            minLeadingWidth: 0,
            titleAlignment: ListTileTitleAlignment.threeLine,
            horizontalTitleGap: 0,
            child: expansion.ExpansionTile(
              controller: expansionTileController,
              tilePadding: EdgeInsets.zero,
              childrenPadding: EdgeInsets.symmetric(horizontal: 9.sp),
              clipBehavior: Clip.none,
              textColor: const Color(0xff02081A),
              iconColor: const Color(0xff3A3A3A),
              shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              collapsedShape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              onExpansionChanged: (value) {
                isExpanded.value = value;
                isExpanded.refresh();
                print(value.toString());
              },
              title: Stack(
                children: [
                  Container(
                    height: 155.h,
                    width: Get.size.width,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      color: getColor(opponentConfColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: ClipPath(
                      clipper: SkewCut(),
                      child: Container(
                        height: 155.h,
                        width: (Get.size.width * 0.6),
                        margin:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: getColor(playerConfColor),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.sp,
                    right: 15.sp,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      children: [
                        8.h.heightBox,
                        Row(
                          children: [
                            5.w.widthBox,
                            Icon(
                              Icons.home,
                              color: hometeam1 == true
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            (isCurrentPlayer == true || isCurrentPlayer == null)
                                ? 30.w.widthBox
                                : const SizedBox(),
                            Column(children: [
                              8.h.heightBox,
                              Text(
                                "Me",
                                style: TextStyle(
                                  color: (isCurrentPlayer == true ||
                                          isCurrentPlayer == null)
                                      ? Colors.white.withOpacity(0.90)
                                      : Colors.transparent,
                                  fontSize: 12.sp,
                                ),
                              ),
                              Icon(
                                Icons.expand_more,
                                color: (isCurrentPlayer == true ||
                                        isCurrentPlayer == null)
                                    ? Colors.white.withOpacity(0.90)
                                    : Colors.transparent,
                              ),
                            ]),
                            const Spacer(),
                            Column(children: [
                              5.h.heightBox,
                              Text(
                                "Me",
                                style: TextStyle(
                                  color: (isOpponentMe == true)
                                      ? Colors.white.withOpacity(0.90)
                                      : Colors.transparent,
                                  fontSize: 12.sp,
                                ),
                              ),
                              Icon(
                                Icons.expand_more,
                                color: (isOpponentMe == true)
                                    ? Colors.white.withOpacity(0.90)
                                    : Colors.transparent,
                              ),
                            ]),
                            30.w.widthBox,
                            Icon(
                              Icons.home,
                              color: hometeam2 == true
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            5.w.widthBox,
                          ],
                        ),
                        5.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: team1OnTap,
                              child: CachedNetworkImage(
                                imageUrl: team1Image,
                                height: 45.h,
                                width: 45.w,
                                fit: BoxFit.fill,
                                placeholder: (context, url) =>
                                    placeHolderImage(),
                                errorWidget: (context, url, error) =>
                                    placeHolderImage(),
                              ),
                            ),
                            15.w.widthBox,
                            Container(
                              height: 30.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                team1Score,
                                textAlign: TextAlign.center,
                                style: style18White,
                              ),
                            ),
                            5.w.widthBox,
                            Opacity(
                              opacity: 0.5,
                              child: Image.network(
                                errorBuilder: (context, error, stackTrace) =>
                                    SizedBox(
                                  height: 25.sp,
                                  width: 39.sp,
                                ),
                                tvStationImg,
                                height: 25.sp,
                                width: 39.sp,
                              ),
                            ),
                            6.w.widthBox,
                            Container(
                              height: 30.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                team2Score,
                                textAlign: TextAlign.center,
                                style: style18White,
                              ),
                            ),
                            15.w.widthBox,
                            GestureDetector(
                              onTap: team2OnTap,
                              child: CachedNetworkImage(
                                imageUrl: team2Image,
                                height: 45.h,
                                width: 45.w,
                                fit: BoxFit.fill,
                                placeholder: (context, url) =>
                                    placeHolderImage(),
                                errorWidget: (context, url, error) =>
                                    placeHolderImage(),
                              ),
                            ),
                          ],
                        ),
                        5.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              playerConferenceImage,
                              height: 25.h,
                              width: 25.w,
                            ),
                            22.w.widthBox,
                            Text(
                              DateFormat.MMMMd().add_jm().format(
                                  DateTime.parse("${dateTime}Z").toLocal()),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            22.w.widthBox,
                            Image.network(
                              opponentConferenceImage,
                              height: 25.h,
                              width: 25.w,
                            )
                          ],
                        ),
                        5.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            6.w.widthBox,
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    playerTeamRank,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  4.w.widthBox,
                                  Flexible(
                                    flex: 4,
                                    child: Text(
                                      team1name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            5.w.widthBox,
                            const Text(
                              "VS",
                              style: TextStyle(color: Colors.white),
                            ),
                            5.w.widthBox,
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    opponentTeamRank,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  4.w.widthBox,
                                  Flexible(
                                    flex: 4,
                                    child: Text(
                                      team2name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            6.w.widthBox,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              maintainState: true,
              children: [
                Container(
                  width: Get.size.width,
                  decoration: BoxDecoration(
                    color: isTeamChange.value
                        ? getColor(playerConfColor).withOpacity(0.70)
                        : getColor(opponentConfColor).withOpacity(0.70),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      6.h.heightBox,
                      Row(
                        children: [
                          10.w.widthBox,
                          opponentPointsBreakDown.isNotEmpty
                              ? Icon(
                                  Icons.compare_arrows,
                                  color: !isTeamChange.value
                                      ? const Color(0xFF7357FF)
                                      : const Color(0xFFD9D9D9),
                                ).onTap(() {
                                  if (opponentPointsBreakDown.isNotEmpty) {
                                    isTeamChange.value = !isTeamChange.value;
                                    isTeamChange.refresh();
                                  }
                                })
                              : const SizedBox(),
                          10.w.widthBox,
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                isTeamChange.value ? team1name : team2name,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.88),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                          status == "Live"
                              ? Text(
                                  "Live",
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.red),
                                )
                              : const SizedBox(),
                          10.w.widthBox,
                        ],
                      ),
                      8.heightBox,
                      ListView.builder(
                        itemCount: isTeamChange.value
                            ? playerPointsBreakDown.length
                            : opponentPointsBreakDown.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Container(
                            width: Get.size.width,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.sp, vertical: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 15.sp, horizontal: 5.sp),
                            decoration: BoxDecoration(
                              // color: isTeamChange.value
                              //     ? getColor(playerConfColor).withOpacity(0.5)
                              //     : getColor(opponentConfColor)
                              //         .withOpacity(0.5),
                              color: isTeamChange.value
                                  ? playerPointsBreakDown[index].points >= 0
                                      ? getColor(playerConfColor)
                                          .withOpacity(0.5)
                                      : const Color(0xff82004E)
                                  : opponentPointsBreakDown[index].points >= 0
                                      ? getColor(opponentConfColor)
                                          .withOpacity(0.5)
                                      : const Color(0xff82004E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                10.w.widthBox,
                                Expanded(
                                  child: Text(
                                    isTeamChange.value
                                        ? playerPointsBreakDown[index].text ??
                                            ""
                                        : opponentPointsBreakDown[index].text ??
                                            "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                                8.widthBox,
                                Text(
                                  isTeamChange.value
                                      ? playerPointsBreakDown[index]
                                          .points
                                          .toString()
                                      : opponentPointsBreakDown[index]
                                          .points
                                          .toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                5.w.widthBox,
                                Container(
                                  height: 15.sp,
                                  width: 15.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(isTeamChange.value
                                          ? playerPointsBreakDown[index]
                                                      .points >=
                                                  0
                                              ? "assets/icons/DratsyPoint.png"
                                              : "assets/icons/NegativeDraftsyPoint.png"
                                          : opponentPointsBreakDown[index]
                                                      .points >=
                                                  0
                                              ? "assets/icons/DratsyPoint.png"
                                              : "assets/icons/NegativeDraftsyPoint.png"),
                                    ),
                                  ),
                                ),
                                10.w.widthBox,
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (playerPointsBreakDown.isNotEmpty ||
            status.isNotEmptyAndNotNull &&
                status != "null" &&
                status != "Upcoming")
          Container(
            height: 40.sp,
            width: Get.size.width,
            margin: EdgeInsets.symmetric(horizontal: 20.sp),
            decoration: const BoxDecoration(
              color: Color(0xff60000000),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                10.w.widthBox,
                Text(
                  status,
                  style: const TextStyle(color: Colors.white),
                ),
                if (playerPointsBreakDown.isNotEmpty)
                  Expanded(
                    child: !isExpanded.value
                        ? const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.expand_less,
                            color: Colors.white,
                          ),
                  ),
                if (playerPointsBreakDown.isNotEmpty)
                  Text(
                    isTeamChange.value
                        ? playerDraftsyPoints.isEmptyOrNull
                            ? "0"
                            : playerDraftsyPoints
                        : opponentDraftsyPoints.isEmptyOrNull
                            ? "0"
                            : opponentDraftsyPoints,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                5.w.widthBox,
                if (playerPointsBreakDown.isNotEmpty)
                  Container(
                    height: 20.sp,
                    width: 20.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        isTeamChange.value
                            ? int.parse(playerDraftsyPoints.isNotEmptyAndNotNull
                                        ? playerDraftsyPoints
                                        : "0") >=
                                    0
                                ? "assets/icons/DratsyPoint.png"
                                : "assets/icons/NegativeDraftsyPoint.png"
                            : int.parse(opponentDraftsyPoints
                                            .isNotEmptyAndNotNull
                                        ? opponentDraftsyPoints
                                        : "0") >=
                                    0
                                ? "assets/icons/DratsyPoint.png"
                                : "assets/icons/NegativeDraftsyPoint.png",
                      )),
                    ),
                  ),
                10.w.widthBox,
              ],
            ),
          ).onTap(() {
            if (playerPointsBreakDown.isNotEmpty) {
              if (!isExpanded.value) {
                expansionTileController.expand();
              } else {
                expansionTileController.collapse();
              }
            }
          }),
      ],
    ),
  );
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
