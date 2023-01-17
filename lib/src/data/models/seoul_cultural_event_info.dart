class SeoulCulturalEventInfo {
  CulturalEventInfo? culturalEventInfo;

  SeoulCulturalEventInfo({this.culturalEventInfo});

  SeoulCulturalEventInfo.fromJson(Map<String, dynamic> json) {
    culturalEventInfo = json['culturalEventInfo'] != null
        ? CulturalEventInfo.fromJson(json['culturalEventInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (culturalEventInfo != null) {
      data['culturalEventInfo'] = culturalEventInfo!.toJson();
    }
    return data;
  }
}

class CulturalEventInfo {
  int? listTotalCount;
  CulturalEventInfoResult? result;
  List<CulturalEventInfoData>? row;

  CulturalEventInfo({this.listTotalCount, this.result, this.row});

  CulturalEventInfo.fromJson(Map<String, dynamic> json) {
    listTotalCount = json['list_total_count'];
    result = json['RESULT'] != null ? CulturalEventInfoResult.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      row = <CulturalEventInfoData>[];
      json['row'].forEach((v) {
        row!.add(CulturalEventInfoData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['list_total_count'] = listTotalCount;
    if (result != null) {
      data['RESULT'] = result!.toJson();
    }
    if (row != null) {
      data['row'] = row!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CulturalEventInfoResult {
  String? code;
  String? message;

  CulturalEventInfoResult({this.code, this.message});

  CulturalEventInfoResult.fromJson(Map<String, dynamic> json) {
    code = json['CODE'];
    message = json['MESSAGE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CODE'] = code;
    data['MESSAGE'] = message;
    return data;
  }
}

class CulturalEventInfoData {
  String? codeName;
  String? guName;
  String? title;
  String? date;
  String? place;
  String? orgName;
  String? useTarget;
  String? useFee;
  String? player;
  String? program;
  String? etcDescription;
  String? orgLink;
  String? mainImage;
  String? registrationDate;
  String? ticket;
  String? startDate;
  String? endDate;
  String? themeCode;

  CulturalEventInfoData(
      {this.codeName,
        this.guName,
        this.title,
        this.date,
        this.place,
        this.orgName,
        this.useTarget,
        this.useFee,
        this.player,
        this.program,
        this.etcDescription,
        this.orgLink,
        this.mainImage,
        this.registrationDate,
        this.ticket,
        this.startDate,
        this.endDate,
        this.themeCode});

  CulturalEventInfoData.fromJson(Map<String, dynamic> json) {
    codeName = json['CODENAME'];
    guName = json['GUNAME'];
    title = json['TITLE'];
    date = json['DATE'];
    place = json['PLACE'];
    orgName = json['ORG_NAME'];
    useTarget = json['USE_TRGT'];
    useFee = json['USE_FEE'];
    player = json['PLAYER'];
    program = json['PROGRAM'];
    etcDescription = json['ETC_DESC'];
    orgLink = json['ORG_LINK'];
    mainImage = json['MAIN_IMG'];
    registrationDate = json['RGSTDATE'];
    ticket = json['TICKET'];
    startDate = json['STRTDATE'];
    endDate = json['END_DATE'];
    themeCode = json['THEMECODE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CODENAME'] = codeName;
    data['GUNAME'] = guName;
    data['TITLE'] = title;
    data['DATE'] = date;
    data['PLACE'] = place;
    data['ORG_NAME'] = orgName;
    data['USE_TRGT'] = useTarget;
    data['USE_FEE'] = useFee;
    data['PLAYER'] = player;
    data['PROGRAM'] = program;
    data['ETC_DESC'] = etcDescription;
    data['ORG_LINK'] = orgLink;
    data['MAIN_IMG'] = mainImage;
    data['RGSTDATE'] = registrationDate;
    data['TICKET'] = ticket;
    data['STRTDATE'] = startDate;
    data['END_DATE'] = endDate;
    data['THEMECODE'] = themeCode;
    return data;
  }
}