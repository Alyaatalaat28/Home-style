import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        InkWell(
          onTap: (){},
          child: ListTile(
            leading:const Icon(
              Icons.person,
              color:scafColor,
              ) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('Alyaa Talaat',
            style: AppStyle.textStyle15Black,) ,),
        ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.email,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('alyaatalaat205@gmail.com',
            style: AppStyle.textStyle15Black,) ,),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.notifications,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('Notification',
            style: AppStyle.textStyle15Black,) ,),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.shield,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('privacy & security',
            style: AppStyle.textStyle15Black,) ,),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.help,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('help & support',
            style: AppStyle.textStyle15Black,) ,),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.info_outline,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('About',
            style: AppStyle.textStyle15Black,) ,),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
            leading:const Icon(
              Icons.logout,
              color:scafColor,) ,
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color:scafColor
              ),
            title:Text('LogOut',
            style: AppStyle.textStyle15Black,) ,),
          ),
          
      ],
    );
  }
}