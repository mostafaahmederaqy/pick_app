
class Cities {
  List<CitiesData> data;
  String status;
  String message;

  Cities({
    this.data,
    this.status,
    this.message,
  });

  factory Cities.fromJson(Map<String, dynamic> json) => new Cities(
    data: new List<CitiesData>.from(json["data"].map((x) => CitiesData.fromJson(x))),
    status: json["status"],
    message: json["message"],
  );


}

class CitiesData {
  int cityId;
  String cityName;

  CitiesData({
    this.cityId,
    this.cityName,
  });

  factory CitiesData.fromJson(Map<String, dynamic> json) => new CitiesData(
    cityId: json["city_id"],
    cityName: json["city_name"],
  );


}
