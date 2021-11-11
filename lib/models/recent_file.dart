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
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: BaseImages.figmaFile,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: BaseImages.docFile,
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: BaseImages.soundFile,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: BaseImages.mediaFile,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: BaseImages.pdfFile,
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
];
