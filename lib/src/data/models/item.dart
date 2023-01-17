class Item {
  String codeName;
  String guName;
  String title;
  String date;
  String place;
  String orgName;
  String useTarget;
  String useFee;
  String player;
  String program;
  String etcDescription;
  String orgLink;
  String mainImage;
  String registrationDate;
  String ticket;
  String startDate;
  String endDate;
  String themeCode;

  Item({
    required this.codeName,
    required this.guName,
    required this.title,
    required this.date,
    required this.place,
    required this.orgName,
    required this.useTarget,
    required this.useFee,
    required this.player,
    required this.program,
    required this.etcDescription,
    required this.orgLink,
    required this.mainImage,
    required this.registrationDate,
    required this.ticket,
    required this.startDate,
    required this.endDate,
    required this.themeCode
  });

  @override
  String toString() {
    return 'Item{codeName: $codeName, guName: $guName, title: $title,'
               ' date: $date, place: $place, orgName: $orgName,'
               ' useTarget: $useTarget, useFee: $useFee, player: $player,'
               ' program: $program, etcDescription: $etcDescription, orgLink: $orgLink,'
               ' mainImage: $mainImage, registrationDate: $registrationDate, ticket: $ticket,'
               ' startDate: $startDate, endDate: $endDate, themeCode: $themeCode}';
  }
}