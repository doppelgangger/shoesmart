class Galery {
  String image;

  Galery({
    this.image,
  });

  Galery.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
    };
  }
}
