import 'package:flutter/material.dart';
import 'package:work5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
   final int index;
  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(  
      color: Color.fromARGB(255, 217, 217, 214), 
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 300),
      child: ListTile(
        isThreeLine: true,
        leading:CircleAvatar(radius: 18,backgroundColor: const Color.fromARGB(255, 141, 149, 215), child:Text(index.toString(), style: const TextStyle(color: Colors.black, fontSize: 15),)),
        title: Text(car.brand, style:const TextStyle(fontSize: 24,fontWeight:FontWeight.w400 ),),
        subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Model: ${car.model}",style:const TextStyle(fontSize: 16,color: Color.fromARGB(255, 72, 70, 111),)),
               Text("Color: ${car.color}",
                style: const TextStyle(color: Color.fromARGB(255, 103, 92, 133),fontSize: 15),
              ),
              Text("Price: ${car.price}",
                style: const TextStyle(color: Color.fromARGB(255, 113, 105, 149),fontSize: 15),
              ),
            ]),
      
        trailing: 
            Icon(car.availability==true ? Icons.check : Icons.close,color: Color.fromARGB(255, 34, 50, 172)),
        ),
       );
       
  }
}
