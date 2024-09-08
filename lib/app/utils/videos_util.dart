class VideosUtils {
  final String title1;
  final String description;
  final String videoUrl; // Could store the URL for the video
  final String thumbnail; // Path to the thumbnail image

  VideosUtils({
    required this.title1,
    required this.description,
    required this.videoUrl,
    required this.thumbnail,
  });
}

// Example data for videosUtils
List<VideosUtils> videosUtils = [
  VideosUtils(
    title1: "Cardiopulmonary Resuscitation for adults",
    description: "An informative video about health and wellness.",
    videoUrl: "https://youtu.be/83OszCFf4mA?si=w6EggVQiKHR3gods",
    thumbnail: "assets/images/video1_thumbnail.png",
  ),
  VideosUtils(
    title1: "Cardiopulmonary Resuscitation for infants",
    description: "An overview of the SDG and its importance.",
    videoUrl: "https://youtu.be/flJ9Psd1j_c?si=3WHqUJNI8NXIWjqa",
    thumbnail: "assets/images/video2_thumbnail.png",
  ),
  VideosUtils(
    title1: "FirstAid for choking in adults and children",
    description: "How climate change impacts health and wellbeing.",
    videoUrl: "https://youtu.be/CnbjPFwkiTQ?si=r6JgQTUxEprYuMPU",
    thumbnail: "assets/images/video3_thumbnail.png",
  ),
];
