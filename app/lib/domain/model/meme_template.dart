enum MemeTemplate {
  loool(
      name: 'lo0000l',
      fileName: 'template_0.png',
      textsNumber: 1,
      textColor: TextColor.dark,
      textLocations: [
        TextLocation.bottomCenter,
      ]),
  notSimply(
      name: 'One Does Not Simply',
      fileName: 'template_1.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]),
  catYellingWomen(
      name: 'Woman Yelling At Cat',
      fileName: 'cat_women.png',
      textsNumber: 2,
      textColor: TextColor.dark,
      textLocations: [
        TextLocation.topRight,
        TextLocation.topLeft,
      ]),
  thinkAboutIt(
      name: 'Think about it',
      fileName: 'think_about_it.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]),

  skepticalKid(
      name: 'Skeptical Kid',
      fileName: 'skeptical_kid.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]),
  fry(
      name: 'Futurama Fry',
      fileName: 'fry.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]),
  waitingSkeleton(
      name: 'Waiting skeleton',
      fileName: 'waiting_skeleton.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]),
  laughingLeo(
      name: 'Laughing Leo',
      fileName: 'laughing_leo.png',
      textsNumber: 2,
      textColor: TextColor.light,
      textLocations: [
        TextLocation.topCenter,
        TextLocation.bottomCenter,
      ]);

  const MemeTemplate({
    required this.name,
    required this.fileName,
    required this.textsNumber,
    required this.textColor,
    required this.textLocations,
  });
  final String name;
  final String fileName;
  final int textsNumber;
  final TextColor textColor;
  final List<TextLocation> textLocations;
}

enum TextColor { dark, light }

enum TextLocation {
  topRight,
  topLeft,
  topCenter,
  bottomRight,
  bottomLeft,
  bottomCenter,
}
