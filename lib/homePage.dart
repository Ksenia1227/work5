import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:work5/models/car/car.dart';
import 'package:work5/models/carData/carData.dart';
import 'package:work5/widgets/carWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String url = 'https://myfakeapi.com/api/cars';
  Dio client = Dio();
  List<Car> carList = [];

  void getNetworkData() async{
    var response =await client.get(url);
    carList=CarData.fromJson(response.data).cars;
    setState(() {});
  }
    @override
  void initState() {
    getNetworkData();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(body: ListView.builder(
      itemCount: carList.length,
      itemBuilder: (context,index ){
      return CarWidget(car: carList[index],index: index +1,);
    }
    )
    );
  }
}