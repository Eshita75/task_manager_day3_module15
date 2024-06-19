import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

AppBar ProfileAppBar() {
  return AppBar(
    backgroundColor: AppColors.themeColor,

    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        // child: NetworkCachedImage(
        //   //url: 'https://whipped.in/cdn/shop/files/pink-butterfly-cake_1800x1800.png?v=1686848832',fit: BoxFit.cover,
        // ),
      ),
    ),

    title: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dummy Name',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          'email@gmail.com',
          style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),

    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.logout))
    ],
  );
}