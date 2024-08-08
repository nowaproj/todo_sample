import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/CategoryModel.dart';

@NowaGenerated({'auto-width': 129.0, 'auto-height': 52.0})
class CategoryItem extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CategoryItem(
      {this.isSelected = false,
      this.category = const CategoryModel(name: '[NAME]'),
      this.onTap,
      super.key});

  final bool? isSelected;

  final CategoryModel? category;

  final void Function()? onTap;

  Color? createColor1() {
    if (isSelected!) {
      return const Color(4291354111);
    } else {
      return const Color(12895428);
    }
  }

  Color createColor() {
    if (isSelected!) {
      return const Color(4287806460);
    } else {
      return const Color(4290434043);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
            top: 8.0,
            bottom: 8.0,
          ),
          child: NFlex(
            direction: Axis.horizontal,
            spacing: 0.0,
            children: [
              FlexSizedBox(
                width: null,
                height: null,
                child: Text(
                  category!.name!,
                  style: const TextStyle(color: Color(4285828275)),
                ),
              )
            ],
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: createColor(), width: 1.4),
            borderRadius: BorderRadius.circular(14.0)),
        color: createColor1(),
      ),
      borderRadius: BorderRadius.circular(14.0),
      onTap: onTap,
    );
  }
}
