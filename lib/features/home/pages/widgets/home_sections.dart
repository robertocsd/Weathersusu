import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String asset;
  final String value;
  final String name;

  const InfoSection({
    super.key,
    required this.asset,
    required this.value,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Image.asset(
        asset,
        scale: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              value,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      )
    ]);
  }
}
