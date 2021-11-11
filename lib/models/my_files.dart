import 'package:flutter/material.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';
import 'package:web_dashboard_docker/app/shared/base_images.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: BaseImages.documents,
    totalStorage: "1.9GB",
    color: BaseColors.primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: BaseImages.googleDrive,
    totalStorage: "2.9GB",
    color: BaseColors.treePoppy,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: BaseImages.oneDrive,
    totalStorage: "1GB",
    color: BaseColors.anakiwa,
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 5328,
    svgSrc: BaseImages.dropBox,
    totalStorage: "7.3GB",
    color: BaseColors.azureRadiance,
    percentage: 78,
  ),
];
