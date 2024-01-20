import 'package:flutter/material.dart';

class content_tabbar_details extends StatelessWidget {
  const content_tabbar_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "  From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
