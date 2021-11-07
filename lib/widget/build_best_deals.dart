import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/best_deal_model.dart';

class BuildBestDeals extends StatelessWidget {
  const BuildBestDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _list = BestDealModel.list();
    return Container(
      height: 180.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var _data = _list[index];
          return Container(
            margin: EdgeInsets.only(right: 16.0),
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_data.image),
              ),
            ),
          );
        },
      ),
    );
  }
}
