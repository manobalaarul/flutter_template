import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/theme_controller.dart';
import '../../core/widgets/common_appbar.dart';
import '../../core/widgets/profile_widgets/profile_option_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const CommonAppBar(title: 'Profile'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // const CircleAvatar(
            //   radius: 50,
            //   backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=4'),
            // ),
            const SizedBox(height: 12),
            const Text(
              'Mano Developer',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'manodev@example.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            /// Settings
            ProfileOptionTile(
              icon: Icons.settings_rounded,
              title: 'Settings',
              onTap: () {
                // Get.to(() => const SettingsView());
              },
            ),

            const SizedBox(height: 12),

            /// Payments
            ProfileOptionTile(
              icon: Icons.payment_rounded,
              title: 'Payments',
              onTap: () {},
            ),

            const SizedBox(height: 12),

            /// Dark Mode
            Obx(
              () => ProfileOptionTile(
                icon: themeController.isDark.value
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded,
                title: 'Dark Mode',
                trailing: SizedBox(
                  height: 30,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Switch(
                      value: themeController.isDark.value,
                      onChanged: (_) => themeController.toggleTheme(),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
                onTap: () => themeController.toggleTheme(),
              ),
            ),

            const SizedBox(height: 12),

            /// Logout
            ProfileOptionTile(
              icon: Icons.logout_rounded,
              title: 'Logout',
              onTap: () {
                // logout logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
