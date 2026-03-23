import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final Color leadingContainerColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;
  const FeatureItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.leadingContainerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: ListTile(
        leading: Container(
          width: MediaQuery.sizeOf(context).width * 0.1,
          height: MediaQuery.sizeOf(context).height * 0.05,
          decoration: BoxDecoration(
            color: leadingContainerColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Icon(icon, color: iconColor),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xffa7a7a7),
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_sharp,
          size: 20,
          color: Color(0xffc0c0c0),
        ),
      ),
    );
  }
}
