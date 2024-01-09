import 'package:flutter/material.dart';
import 'package:plantapp/details_page.dart';
import 'package:plantapp/model/plant_data.dart';
import 'package:plantapp/widgets/plant_Item.dart';

class PlantList extends StatelessWidget {
  const PlantList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: plants.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          plant: plants[index],
                        )));
          },
          child: PlantItem(
            plant: plants[index],
          ),
        );
      },
    );
  }
}
