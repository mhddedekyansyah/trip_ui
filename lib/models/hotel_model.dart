class HotelModel{
  String? name;
  String? address;
  int? price;
  String? imgUrl;
  double? rate;

  HotelModel({this.name, this.address, this.price, this.rate, this.imgUrl});

  static List<HotelModel> generateHotel(){
    return [
      HotelModel(name: 'Standout Hotel', address: 'Jakarta, Indonesia', price: 500, rate: 5.0, imgUrl: 'assets/images/image.png'),
      HotelModel(name: 'Twins Hotel', address: 'Bandung, Indonesia', price: 350, rate: 4.5, imgUrl: 'assets/images/image1.png'),
    ];
  }
}