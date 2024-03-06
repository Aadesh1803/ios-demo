class WeekEventModel {
  int? leagueID;
  List<int>? teams;
  List<Schedule>? schedule;
  List<WeekDaysOrder>? weekDaysOrder;

  WeekEventModel(
      {this.leagueID, this.teams, this.schedule, this.weekDaysOrder});

  WeekEventModel.fromJson(Map<String, dynamic> json) {
    leagueID = json['League ID'];
    teams = json['Teams'].cast<int>();
    if (json['Schedule'] != null) {
      schedule = <Schedule>[];
      json['Schedule'].forEach((v) {
        schedule!.add(Schedule.fromJson(v));
      });
    }
    if (json['weekDaysOrder'] != null) {
      weekDaysOrder = <WeekDaysOrder>[];
      json['weekDaysOrder'].forEach((v) {
        weekDaysOrder!.add(WeekDaysOrder.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['League ID'] = leagueID;
    data['Teams'] = teams;
    if (schedule != null) {
      data['Schedule'] = schedule!.map((v) => v.toJson()).toList();
    }
    if (weekDaysOrder != null) {
      data['weekDaysOrder'] = weekDaysOrder!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Schedule {
  int? playerTeamID;
  int? playerTeamConferenceID;
  int? opponentTeamID;
  int? opponentTeamConferenceID;
  String? playerUsername;
  String? playerTeamName;
  String? playerTeamRank;
  String? opponentPlayerUsername;
  String? opponentTeamName;
  String? playerTeamImage;
  String? opponentTeamImage;
  String? opponentTeamRank;
  String? date;
  String? gametime;
  String? datetime;
  int? sportID;
  int? weekNUmber;
  String? status;
  Labecolorcodes? labecolorcodes;
  String? playerTeamScore;
  String? opponentTeamScore;
  bool? isGameCounted;
  String? playerDraftsyPoints;
  String? opponentDraftsyPoints;
  String? playerConfColor;
  String? opponentConfColor;
  String? playerConferenceImage;
  String? opponentConferenceImage;
  List<dynamic>? playerPointsBreakDown;
  List<dynamic>? opponentPointsBreakDown;
  String? tvStation;
  bool? playerHomeTeam;
  bool? opponentHomeTeam;

  Schedule(
      {this.playerTeamID,
      this.playerTeamConferenceID,
      this.opponentTeamID,
      this.opponentTeamConferenceID,
      this.playerUsername,
      this.playerTeamName,
      this.playerTeamRank,
      this.opponentPlayerUsername,
      this.opponentTeamName,
      this.playerTeamImage,
      this.opponentTeamImage,
      this.opponentTeamRank,
      this.date,
      this.gametime,
      this.datetime,
      this.sportID,
      this.weekNUmber,
      this.status,
      this.labecolorcodes,
      this.playerTeamScore,
      this.opponentTeamScore,
      this.isGameCounted,
      this.playerDraftsyPoints,
      this.opponentDraftsyPoints,
      this.playerConfColor,
      this.opponentConfColor,
      this.playerConferenceImage,
      this.opponentConferenceImage,
      this.playerPointsBreakDown,
      this.opponentPointsBreakDown,
      this.tvStation,
      this.playerHomeTeam,
      this.opponentHomeTeam});

  Schedule.fromJson(Map<String, dynamic> json) {
    playerTeamID = json['playerTeamID'];
    playerTeamConferenceID = json['playerTeamConferenceID'];
    opponentTeamID = json['opponentTeamID'];
    opponentTeamConferenceID = json['opponentTeamConferenceID'];
    playerUsername = json['Player Username'];
    playerTeamName = json['Player Team name'];
    playerTeamRank = json['Player Team Rank'];
    opponentPlayerUsername = json['Opponent Player Username'];
    opponentTeamName = json['Opponent Team name'];
    playerTeamImage = json['Player Team image'];
    opponentTeamImage = json['Opponent Team image'];
    opponentTeamRank = json['Opponent Team Rank'];
    date = json['date'];
    gametime = json['gametime'];
    datetime = json['datetime'];
    sportID = json['sportID'];
    weekNUmber = json['WeekNUmber'];
    status = json['status'];
    labecolorcodes = json['labecolorcodes'] != null
        ? Labecolorcodes.fromJson(json['labecolorcodes'])
        : null;
    playerTeamScore = json['Player Team Score'];
    opponentTeamScore = json['Opponent Team Score'];
    isGameCounted = json['isGameCounted'];
    playerDraftsyPoints = json['Player Draftsy Points'];
    opponentDraftsyPoints = json['Opponent Draftsy Points'];
    playerConfColor = json['playerConfColor'];
    opponentConfColor = json['opponentConfColor'];
    playerConferenceImage = json['playerConferenceImage'];
    opponentConferenceImage = json['opponentConferenceImage'];
    if (json['Player PointsBreakDown'] != null) {
      playerPointsBreakDown = <PlayerPointsBreakDown>[];
      json['Player PointsBreakDown'].forEach((v) {
        playerPointsBreakDown!.add(PlayerPointsBreakDown.fromJson(v));
      });
    }
    if (json['Opponent PointsBreakDown'] != null) {
      opponentPointsBreakDown = <PlayerPointsBreakDown>[];
      json['Opponent PointsBreakDown'].forEach((v) {
        opponentPointsBreakDown!.add(PlayerPointsBreakDown.fromJson(v));
      });
    }
    tvStation = json['tvStation'];
    playerHomeTeam = json['playerHomeTeam'];
    opponentHomeTeam = json['opponentHomeTeam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['playerTeamID'] = playerTeamID;
    data['playerTeamConferenceID'] = playerTeamConferenceID;
    data['opponentTeamID'] = opponentTeamID;
    data['opponentTeamConferenceID'] = opponentTeamConferenceID;
    data['Player Username'] = playerUsername;
    data['Player Team name'] = playerTeamName;
    data['Player Team Rank'] = playerTeamRank;
    data['Opponent Player Username'] = opponentPlayerUsername;
    data['Opponent Team name'] = opponentTeamName;
    data['Player Team image'] = playerTeamImage;
    data['Opponent Team image'] = opponentTeamImage;
    data['Opponent Team Rank'] = opponentTeamRank;
    data['date'] = date;
    data['gametime'] = gametime;
    data['datetime'] = datetime;
    data['sportID'] = sportID;
    data['WeekNUmber'] = weekNUmber;
    data['status'] = status;
    if (labecolorcodes != null) {
      data['labecolorcodes'] = labecolorcodes!.toJson();
    }
    data['Player Team Score'] = playerTeamScore;
    data['Opponent Team Score'] = opponentTeamScore;
    data['isGameCounted'] = isGameCounted;
    data['Player Draftsy Points'] = playerDraftsyPoints;
    data['Opponent Draftsy Points'] = opponentDraftsyPoints;
    data['playerConfColor'] = playerConfColor;
    data['opponentConfColor'] = opponentConfColor;
    data['playerConferenceImage'] = playerConferenceImage;
    data['opponentConferenceImage'] = opponentConferenceImage;
    if (playerPointsBreakDown != null) {
      data['Player PointsBreakDown'] =
          playerPointsBreakDown!.map((v) => v.toJson()).toList();
    }
    if (opponentPointsBreakDown != null) {
      data['Opponent PointsBreakDown'] =
          opponentPointsBreakDown!.map((v) => v.toJson()).toList();
    }
    data['tvStation'] = tvStation;
    data['playerHomeTeam'] = playerHomeTeam;
    data['opponentHomeTeam'] = opponentHomeTeam;
    return data;
  }
}

class Labecolorcodes {
  String? labelBGColor;
  String? labelFontColor;

  Labecolorcodes({this.labelBGColor, this.labelFontColor});

  Labecolorcodes.fromJson(Map<String, dynamic> json) {
    labelBGColor = json['LabelBGColor'];
    labelFontColor = json['LabelFontColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['LabelBGColor'] = labelBGColor;
    data['LabelFontColor'] = labelFontColor;
    return data;
  }
}

class PlayerPointsBreakDown {
  String? text;
  int? points;

  PlayerPointsBreakDown({this.text, this.points});

  PlayerPointsBreakDown.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['points'] = points;
    return data;
  }
}

class WeekDaysOrder {
  String? name;
  int count = 0;

  WeekDaysOrder({this.name, this.count = 0});

  WeekDaysOrder.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    count = json['count'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['count'] = count;
    return data;
  }
}
