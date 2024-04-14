import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/delete_account.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/enbeld_notifications.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/logout.dart';
import 'package:flutter/material.dart';

class StaticBottonsInPersonalProtfolioScreen extends StatelessWidget {
  const StaticBottonsInPersonalProtfolioScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EnableNotifications(),
        Logout(),
        DeleteAccounts(),
      ],
    );
  }
}
