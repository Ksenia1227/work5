import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:work5/models/car/car.dart';

part 'carData.freezed.dart';
part 'carData.g.dart';

@freezed
class CarData with _$CarData {

  factory CarData({
    required List<Car>cars
  }) = _CarData;

  factory CarData.fromJson(Map<String, dynamic> json) => _$CarDataFromJson(json);
}