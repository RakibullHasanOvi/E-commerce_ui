import 'package:ecommerce_app_design/Widgets/Items_card.dart';
import 'package:ecommerce_app_design/models/items.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemsStaggeredGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemList = Items.generateItems();

    return Container(
      padding: EdgeInsets.all(30),
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: itemList.length,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4,
        itemBuilder: (contex, index) => ItemsCard(itemList[index]),
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }
}
