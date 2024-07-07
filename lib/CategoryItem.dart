import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 90.12890625, 'auto-height': 38.0})
class CategoryItem extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CategoryItem({this.isSelected = false, super.key});

  final bool? isSelected;

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
    return Container(
      decoration: BoxDecoration(
        color: createColor1(),
        borderRadius: BorderRadius.circular(14.0),
        border: Border.all(color: createColor(), width: 1.4),
      ),
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
            const FlexSizedBox(
              width: null,
              height: null,
              child: Text(
                'Groceries',
                style: TextStyle(color: Color(4285828275)),
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
