import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantapp/model/plant_model.dart';

class PlantItem extends StatelessWidget {
  final Plant plant;
  const PlantItem({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Colors.green,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.50,
      height: double.infinity,
      child: Container(
        child: Stack(
          children: [
            Hero(
              tag: Key(plant.id.toString()),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: DecorationImage(
                      image: AssetImage(plant.imagePath), fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.green,
                mini: true,
                onPressed: () {},
                child: Icon(CupertinoIcons.add),
              ),
            ),
            Positioned(
              left: 20.w,
              bottom: 10.h,
              child: Text(
                "${plant.name}  \$${plant.price}",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
