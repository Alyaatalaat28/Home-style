import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/features/user/presentation/views/widgets/custom_alert_dialog.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: const Icon(
              Icons.person,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'Alyaa Talaat',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: const Icon(
              Icons.email,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'alyaatalaat205@gmail.com',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: const Icon(
              Icons.notifications,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'Notification',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: ((context) => const CustomAlertDialog(
                      title: 'privacy & security',
                      content:
                          'To ensure privacy and security in your appUse strongunique passwords.\nKeep your app and devices updated.\nBe cautious with personal information.\nWatch out for phishing attempts Regularly review privacy settings.\nRemember,prioritize your privacy and security online!',
                    )));
          },
          child: ListTile(
            leading: const Icon(
              Icons.shield,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'privacy & security',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: ((context) => const CustomAlertDialog(
                      title: 'help & support',
                      content:
                          'For further information about this app CONTACT: alyaatalaat205@gmail.com',
                    )));
          },
          child: ListTile(
            leading: const Icon(
              Icons.help,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'help & support',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: ((context) => const CustomAlertDialog(
                      title: 'About',
                      content:
                          'Welcome to our furniture app! Discover a wide selection of stylish and high-quality furniture pieces for every room in your home. Browse through our extensive catalog, explore different styles and designs, and find the perfect pieces to create your dream space. With user-friendly navigation and detailed product information, shopping for furniture has never been easier. Transform your home with our app and make your interior design dreams a reality!',
                    )));
          },
          child: ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'About',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: const Icon(
              Icons.logout,
              color: scafColor,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: scafColor),
            title: Text(
              'LogOut',
              style: AppStyle.textStyle15Black,
            ),
          ),
        ),
      ],
    );
  }
}
