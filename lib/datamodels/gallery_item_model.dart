class GalleryItemModel {
  final String title;
  final String description;
  final String imageAsset;

  GalleryItemModel({
    this.title,
    this.description,
    this.imageAsset,
  });

  GalleryItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        imageAsset = map['imageAsset'];
}
