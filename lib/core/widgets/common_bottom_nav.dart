import 'package:flutter/material.dart';

class CommonBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CommonBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.home_rounded,
      Icons.search_rounded,
      Icons.favorite_rounded,
      Icons.person_rounded,
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final isSelected = currentIndex == index;
            return GestureDetector(
              onTap: () => onTap(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
                padding: EdgeInsets.symmetric(
                  horizontal: isSelected ? 20 : 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  icons[index],
                  size: 26,
                  color: isSelected ? Colors.black : Colors.white70,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
