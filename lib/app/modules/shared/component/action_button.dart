import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionButton extends StatelessWidget {
  final String svgIcon;
  final String label;
  final GestureTapCallback? onTap;

  const ActionButton({
    Key? key,
    required this.svgIcon,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 50,
              child: SvgPicture.asset(
                svgIcon,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
