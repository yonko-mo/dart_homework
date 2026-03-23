import 'package:flutter/material.dart';

class QuickStatItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String value;
  final String statName;
  const QuickStatItem({
    super.key,
    required this.icon,
    required this.value,
    required this.statName,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffd6d3d6),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: MediaQuery.sizeOf(context).width * 0.27,
      height: MediaQuery.sizeOf(context).height * 0.11,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon, size: 32, color: iconColor),
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            statName,
            style: const TextStyle(
              color: Color(0xffc9c9c9),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
