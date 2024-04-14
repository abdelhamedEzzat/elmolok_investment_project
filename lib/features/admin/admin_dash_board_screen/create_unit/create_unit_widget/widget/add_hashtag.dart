import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HashTagWidget extends StatefulWidget {
  const HashTagWidget(
      {super.key, required this.controller, required this.selected});
  final TextEditingController controller;
  final List<String> selected;
  @override
  State<HashTagWidget> createState() => _HashTagWidgetState();
}

class _HashTagWidgetState extends State<HashTagWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.w,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            StringsManger.addManualHashtag,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.w),
          ),
        ),
        SizedBox(
          height: 5.w,
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: StringsManger.addManualHashtag,
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.add_box,
                  size: 25.w,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    String hashtag = widget.controller.text.trim();
                    if (hashtag.isNotEmpty &&
                        !widget.selected.contains(hashtag)) {
                      widget.selected.add(hashtag);
                      widget.controller.clear();
                    }
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: widget.selected.map((s) {
              return Chip(
                backgroundColor: ColorManger.buttonColor.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                label: Text(s, style: TextStyle(color: Colors.grey[900])),
                onDeleted: () {
                  setState(() {
                    widget.selected.remove(s);
                  });
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
