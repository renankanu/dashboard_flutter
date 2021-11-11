import 'package:web_dashboard_docker/app/shared/base_images.dart';

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({
    this.icon,
    this.title,
    this.date,
    this.size,
  });
}

List demoRecentFiles = [
  RecentFile(
    icon: BaseImages.xdFile,
    title: "XD",
    date: "01/03/2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: BaseImages.figmaFile,
    title: "Figma",
    date: "27/02/2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: BaseImages.docFile,
    title: "Documento",
    date: "23/02/2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: BaseImages.soundFile,
    title: "Arquivo de som",
    date: "21/02/2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: BaseImages.mediaFile,
    title: "Arquivo de mídia",
    date: "23/02/2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: BaseImages.pdfFile,
    title: "Vendas pdf",
    date: "25/02/2021",
    size: "3.5mb",
  ),
];
