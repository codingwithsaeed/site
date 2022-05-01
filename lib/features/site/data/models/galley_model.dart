class GalleryModel {
  final int index;
  final List<String> pictures;
  final String locale;

  const GalleryModel({
    required this.pictures,
    required this.locale,
    this.index = 0,
  });
}
