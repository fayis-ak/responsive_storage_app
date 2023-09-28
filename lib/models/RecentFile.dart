class RecentFile {
  final String icon, title, date, size;

  RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

List demoRecentFiles = [
  RecentFile(
      icon: "assets/icons/xd_file.svg",
      title: "XD File",
      date: "01-03-201",
      size: "3.5mb"),
  RecentFile(
      icon: "assets/icons/Figma_file.svg",
      title: "Figma File",
      date: "27-02-201",
      size: "19.0mb"),
  RecentFile(
      icon: "assets/icons/doc_file.svg",
      title: "Documentns",
      date: "2-02-201",
      size: "32.5mb"),
  RecentFile(
      icon: "assets/icons/sound_file.svg",
      title: "Sound File",
      date: "01-03-201",
      size: "3.5mb"),
  RecentFile(
      icon: "assets/icons/media_file.svg",
      title: "Media File",
      date: "01-03-201",
      size: "3.5mb"),
  RecentFile(
      icon: "assets/icons/pdf_file.svg",
      title: "Sals PDF",
      date: "01-03-201",
      size: "3.5mb"),
  RecentFile(
      icon: "assets/icons/excle_file.svg",
      title: "Exel File",
      date: "01-03-201",
      size: "3.5mb"),
];
