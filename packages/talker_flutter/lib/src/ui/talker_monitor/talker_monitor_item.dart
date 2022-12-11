import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerMonitorItem extends StatelessWidget {
  const TalkerMonitorItem({
    Key? key,
    required this.logs,
    required this.title,
    this.subtitle,
    this.subtitleWidget,
    required this.color,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Widget? subtitleWidget;
  final List<TalkerDataInterface> logs;
  final Color color;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 49, 49, 49),
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: color,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    if (subtitleWidget != null) subtitleWidget!
                  ],
                ),
              ],
            ),
            if (onTap != null)
              Icon(Icons.arrow_forward_ios_rounded, color: color),
          ],
        ),
      ),
    );
  }
}
