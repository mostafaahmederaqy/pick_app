class The3AmelModel {
  Data data;
  String status;
  String message;

  The3AmelModel({
    this.data,
    this.status,
    this.message,
  });

  factory The3AmelModel.fromJson(Map<String, dynamic> json) => new The3AmelModel(
    data: Data.fromJson(json["data"]),
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "status": status,
    "message": message,
  };
}

class Data {
  int id;
  String name;
  String mobile;
  String city;
  String image;
  String cityId;
  String jwt;

  Data({
    this.id,
    this.name,
    this.mobile,
    this.city,
    this.image,
    this.cityId,
    this.jwt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    id: json["id"],
    name: json["name"],
    mobile: json["mobile"],
    city: json["city"],
    image: json["image"],
    cityId: json["city_id"],
    jwt: json["jwt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "mobile": mobile,
    "city": city,
    "image": image,
    "city_id": cityId,
    "jwt": jwt,
  };
}
