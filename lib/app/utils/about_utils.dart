import 'package:egorcpr/app/changes/strings.dart';

class AboutUtils {
  final String title;
  final String description;
  final String imagePath;

  AboutUtils({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

List<AboutUtils> aboutUtils = [
  AboutUtils(
    title: "Good Heath and Wellbeing",
    description: sDGContent,
    imagePath: "assets/images/image1.png",
  ),
  AboutUtils(
    title: "CPR",
    description: cprContent,
    imagePath: "assets/images/image2.png",
  ),
  AboutUtils(
    title: "Choking",
    description: chockingContent,
    imagePath: "assets/images/image2.png",
  ),
  // Add more items as needed
];
