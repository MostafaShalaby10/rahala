class GenericModel {
  String? image;

  String? type;
  String? date;
  String? name;

  String? rate;

  String? title;
  String? subTitle;
  int? counter;

  String? price;
  String? address;
  String? totalReviews;
  String? description;
  List<String>? images;
  List<GenericModel>? items;

  GenericModel({
    this.image,
    this.type,
    this.rate,
    this.title,
    this.price,
    this.address,
    this.totalReviews,
    this.description,
    this.images,
    this.items,
    this.date,
    this.name,
    this.subTitle,
    this.counter,
  });
}
