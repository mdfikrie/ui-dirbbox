class MyfolderModel {
  String? name;
  String? date;
  String? icon;
  int? color;
  int? font_color;

  MyfolderModel({this.name, this.date, this.icon, this.color, this.font_color});
}

List<MyfolderModel> folder = folderData
    .map(
      (index) => MyfolderModel(
        name: index['name'] as String,
        date: index['date'] as String,
        icon: index['icon'] as String,
        color: index['color'] as int,
        font_color: index['font_color'] as int,
      ),
    )
    .toList();

var folderData = [
  {
    'name': 'Mobile Apps',
    'date': 'December 20.2020',
    'icon': 'assets/icons/folder_purple.svg',
    'color': 0xFFEEF7FE,
    'font_color': 0xFF415EB6
  },
  {
    'name': 'SVG Icons',
    'date': 'December 14.2020',
    'icon': 'assets/icons/folder_yellow.svg',
    'color': 0xFFFFFBEC,
    'font_color': 0xFFFFB110,
  },
  {
    'name': 'Prototypes',
    'date': 'December 14.2020',
    'icon': 'assets/icons/folder_red.svg',
    'color': 0xFFFEEEEE,
    'font_color': 0xFFAC4040,
  },
  {
    'name': 'Avatar',
    'date': 'December 14.2020',
    'icon': 'assets/icons/folder_tosca.svg',
    'color': 0xFFF0FFFF,
    'font_color': 0xFF23B0B0,
  },
];
