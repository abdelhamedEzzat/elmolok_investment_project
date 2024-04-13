import 'package:elmolak_investment_app/features/customer_servises/updates_screen/widgets/update_Items_widget.dart';
import 'package:flutter/material.dart';

class UpdateItem extends StatefulWidget {
  const UpdateItem({
    super.key,
  });

  @override
  State<UpdateItem> createState() => _UpdateItemState();
}

class _UpdateItemState extends State<UpdateItem> {
  bool _customTileExpanded = false;

  // final String mainUpdateItems;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        //height: 50.h,
        child: UpdateItemsWidget(
          customTileExpanded: _customTileExpanded,
        ));
  }
}
