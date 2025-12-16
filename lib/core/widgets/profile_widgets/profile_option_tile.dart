import 'package:flutter/material.dart';

class ProfileOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const ProfileOptionTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap, // ✅ use passed callback
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: trailing != null ? 13 : 16,
            horizontal: 16,
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              trailing ?? const Icon(Icons.arrow_forward_ios_rounded, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
