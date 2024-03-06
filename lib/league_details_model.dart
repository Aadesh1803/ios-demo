// To parse this JSON data, do
//
//     final leagueDetailsModel = leagueDetailsModelFromJson(jsonString);

import 'dart:convert';

LeagueDetailsModel leagueDetailsModelFromJson(String str) =>
    LeagueDetailsModel.fromJson(json.decode(str));

String leagueDetailsModelToJson(LeagueDetailsModel data) =>
    json.encode(data.toJson());

class LeagueDetailsModel {
  bool? success;
  SpecificLeagueData? data;
  String? message;

  LeagueDetailsModel({
    this.success,
    this.data,
    this.message,
  });

  factory LeagueDetailsModel.fromJson(Map<String, dynamic> json) =>
      LeagueDetailsModel(
        success: json["success"],
        data: json["Data"] == null
            ? null
            : SpecificLeagueData.fromJson(json["Data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "Data": data?.toJson(),
        "message": message,
      };
}

class SpecificLeagueData {
  LeagueDetails? leagueDetails;
  League? leagueOwner;
  List<League>? leagueMembers;
  bool? isLeagueMember;
  bool? isPlayoffEntryAnimation;
  bool? isPlayoffWinnerAnimation;
  bool? isBotLeague;
  bool? showDraftsyPOintTab;

  SpecificLeagueData({
    this.leagueDetails,
    this.leagueOwner,
    this.leagueMembers,
    this.isLeagueMember,
    this.isPlayoffEntryAnimation,
    this.isPlayoffWinnerAnimation,
    this.isBotLeague,
    this.showDraftsyPOintTab,
  });

  factory SpecificLeagueData.fromJson(Map<String, dynamic> json) =>
      SpecificLeagueData(
        leagueDetails: json["League Details"] == null
            ? null
            : LeagueDetails.fromJson(json["League Details"]),
        leagueOwner: json["League Owner"] == null
            ? null
            : League.fromJson(json["League Owner"]),
        leagueMembers: json["League Members"] == null
            ? []
            : List<League>.from(
                json["League Members"]!.map((x) => League.fromJson(x))),
        isLeagueMember: json["isLeagueMember"],
        isPlayoffEntryAnimation: json["isPlayoffEntryAnimation"],
        isPlayoffWinnerAnimation: json["isPlayoffWinnerAnimation"],
        isBotLeague: json["isBotLeague"],
        showDraftsyPOintTab: json["showDraftsyPOintTab"],
      );

  Map<String, dynamic> toJson() => {
        "League Details": leagueDetails?.toJson(),
        "League Owner": leagueOwner?.toJson(),
        "League Members": leagueMembers == null
            ? []
            : List<dynamic>.from(leagueMembers!.map((x) => x.toJson())),
        "isLeagueMember": isLeagueMember,
        "isPlayoffEntryAnimation": isPlayoffEntryAnimation,
        "isPlayoffWinnerAnimation": isPlayoffWinnerAnimation,
        "isBotLeague": isBotLeague,
        "showDraftsyPOintTab": showDraftsyPOintTab,
      };
}

class LeagueDetails {
  String? leagueId;
  int? sportId;
  String? sportType;
  String? sportName;
  String? sportIconBlue;
  String? sportIconGray;
  String? leagueName;
  String? leagueImageUrl;
  String? leagueStartDate;
  String? playerNumbers;
  String? leagueStatus;
  String? location;
  String? leagueColor;
  String? leagueDraftDate;
  String? leagueRounds;
  bool? isArchived;
  String? currentRound;
  bool? isPLayoffs;
  bool? isLeagueWinner;
  bool? isCheckedin;
  bool? isDraftCompleted;
  bool? ispickedOrder;
  bool? showDraftsyPOintTab;
  String? gametypeId;
  String? gradientColor1;
  String? gradientColor2;
  String? sportIcon;
  int? token;
  String? backgroundImage;
  String? sportIconRound;
  String? sportTypeIcon;
  String? gameTypeIcon;
  List<TabsList>? tabsList;
  String? seasonRank;
  String? weeklyRank;
  int? maxplayers;
  int? minplayers;
  String? backgroundcardImage;
  PlayoffStatus? playoffStatus;

  LeagueDetails({
    this.leagueId,
    this.sportId,
    this.sportType,
    this.sportName,
    this.sportIconBlue,
    this.sportIconGray,
    this.leagueName,
    this.leagueImageUrl,
    this.leagueStartDate,
    this.playerNumbers,
    this.leagueStatus,
    this.location,
    this.leagueColor,
    this.leagueDraftDate,
    this.leagueRounds,
    this.isArchived,
    this.currentRound,
    this.isPLayoffs,
    this.isLeagueWinner,
    this.isCheckedin,
    this.isDraftCompleted,
    this.ispickedOrder,
    this.showDraftsyPOintTab,
    this.gametypeId,
    this.gradientColor1,
    this.gradientColor2,
    this.sportIcon,
    this.token,
    this.backgroundImage,
    this.sportIconRound,
    this.sportTypeIcon,
    this.gameTypeIcon,
    this.tabsList,
    this.seasonRank,
    this.weeklyRank,
    this.maxplayers,
    this.minplayers,
    this.backgroundcardImage,
    this.playoffStatus,
  });

  factory LeagueDetails.fromJson(Map<String, dynamic> json) => LeagueDetails(
        leagueId: json["League id"],
        sportId: json["Sport id"],
        sportType: json["Sport Type"],
        sportName: json["Sport Name"],
        sportIconBlue: json["Sport Icon Blue"],
        sportIconGray: json["Sport Icon Gray"],
        leagueName: json["League Name"],
        leagueImageUrl: json["League Image url"],
        leagueStartDate: json["League Start Date"],
        playerNumbers: json["playerNumbers"],
        leagueStatus: json["leagueStatus"],
        location: json["location"],
        leagueColor: json["leagueColor"],
        leagueDraftDate: json["LeagueDraftDate"],
        leagueRounds: json["leagueRounds"],
        isArchived: json["isArchived"],
        currentRound: json["currentRound"],
        isPLayoffs: json["isPLayoffs"],
        isLeagueWinner: json["isLeagueWinner"],
        isCheckedin: json["isCheckedin"],
        isDraftCompleted: json["isDraftCompleted"],
        ispickedOrder: json["ispickedOrder"],
        showDraftsyPOintTab: json["showDraftsyPOintTab"],
        gametypeId: json["gametypeID"],
        gradientColor1: json["gradientColor1"],
        gradientColor2: json["gradientColor2"],
        sportIcon: json["sportIcon"],
        token: json["token"],
        backgroundImage: json["backgroundImage"],
        sportIconRound: json["sportIconRound"],
        sportTypeIcon: json["sportTypeIcon"],
        gameTypeIcon: json["gameTypeIcon"],
        tabsList: json["tabsList"] == null
            ? []
            : List<TabsList>.from(
                json["tabsList"]!.map((x) => TabsList.fromJson(x))),
        seasonRank: json["seasonRank"],
        weeklyRank: json["weeklyRank"],
        maxplayers: json["maxplayers"],
        minplayers: json["minplayers"],
        backgroundcardImage: json["backgroundcardImage"],
        playoffStatus: json["playoffStatus"] == null
            ? null
            : PlayoffStatus.fromJson(json["playoffStatus"]),
      );

  Map<String, dynamic> toJson() => {
        "League id": leagueId,
        "Sport id": sportId,
        "Sport Type": sportType,
        "Sport Name": sportName,
        "Sport Icon Blue": sportIconBlue,
        "Sport Icon Gray": sportIconGray,
        "League Name": leagueName,
        "League Image url": leagueImageUrl,
        "League Start Date": leagueStartDate,
        "playerNumbers": playerNumbers,
        "leagueStatus": leagueStatus,
        "location": location,
        "leagueColor": leagueColor,
        "LeagueDraftDate": leagueDraftDate,
        "leagueRounds": leagueRounds,
        "isArchived": isArchived,
        "currentRound": currentRound,
        "isPLayoffs": isPLayoffs,
        "isLeagueWinner": isLeagueWinner,
        "isCheckedin": isCheckedin,
        "isDraftCompleted": isDraftCompleted,
        "ispickedOrder": ispickedOrder,
        "showDraftsyPOintTab": showDraftsyPOintTab,
        "gametypeID": gametypeId,
        "gradientColor1": gradientColor1,
        "gradientColor2": gradientColor2,
        "sportIcon": sportIcon,
        "token": token,
        "backgroundImage": backgroundImage,
        "sportIconRound": sportIconRound,
        "sportTypeIcon": sportTypeIcon,
        "gameTypeIcon": gameTypeIcon,
        "tabsList": tabsList == null
            ? []
            : List<dynamic>.from(tabsList!.map((x) => x.toJson())),
        "seasonRank": seasonRank,
        "weeklyRank": weeklyRank,
        "maxplayers": maxplayers,
        "minplayers": minplayers,
        "backgroundcardImage": backgroundcardImage,
        "playoffStatus": playoffStatus?.toJson(),
      };
}

class TabsList {
  String? name;
  bool? activity;
  int? count;

  TabsList({
    this.name,
    this.activity,
    this.count,
  });

  factory TabsList.fromJson(Map<String, dynamic> json) => TabsList(
        name: json["name"],
        activity: json["activity"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "activity": activity,
        "count": count,
      };
}

class PlayoffStatus {
  int? token;
  bool? isClaimed;
  String? playoffStatusImage;
  String? playoffStatusText;
  String? playoffStatusDescription;
  int? status;

  PlayoffStatus({
    this.token,
    this.isClaimed,
    this.playoffStatusImage,
    this.playoffStatusText,
    this.playoffStatusDescription,
    this.status,
  });

  factory PlayoffStatus.fromJson(Map<String, dynamic> json) => PlayoffStatus(
        token: json["token"],
        isClaimed: json["isClaimed"],
        playoffStatusImage: json["playoffStatusImage"],
        playoffStatusText: json["playoffStatusText"],
        playoffStatusDescription: json["playoffStatusDescription"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "isClaimed": isClaimed,
        "playoffStatusImage": playoffStatusImage,
        "playoffStatusText": playoffStatusText,
        "playoffStatusDescription": playoffStatusDescription,
        "status": status,
      };
}

class League {
  int? id;
  String? username;
  String? playerImageLink;
  String? email;
  String? phoneNumber;
  String? profileStatus;
  String? playerPoints;
  String? playerRank;

  League({
    this.id,
    this.username,
    this.playerImageLink,
    this.email,
    this.phoneNumber,
    this.profileStatus,
    this.playerPoints,
    this.playerRank,
  });

  factory League.fromJson(Map<String, dynamic> json) => League(
        id: json["ID"],
        username: json["Username"],
        playerImageLink: json["Player Image Link"],
        email: json["Email"],
        phoneNumber: json["Phone Number"],
        profileStatus: json["Profile status"],
        playerPoints: json["Player Points"],
        playerRank: json["Player Rank"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Username": username,
        "Player Image Link": playerImageLink,
        "Email": email,
        "Phone Number": phoneNumber,
        "Profile status": profileStatus,
        "Player Points": playerPoints,
        "Player Rank": playerRank,
      };
}
