import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantapp/model/plant_data.dart';
import 'package:plantapp/model/plant_model.dart';

class PopulerPlantList extends StatelessWidget {
  const PopulerPlantList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: populerPlants.length,
      itemBuilder: (context, index) {
        return PopularItem(
          populerPant: populerPlants[index],
        );
      },
    );
  }
}

class PopularItem extends StatelessWidget {
  final Plant populerPant;
  const PopularItem({
    super.key,
    required this.populerPant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(64, 133, 245, 219),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.50,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 75.w,
                child: Image.asset(populerPant.imagePath),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(populerPant.name),
                  Text(
                    populerPant.price.toString(),
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
