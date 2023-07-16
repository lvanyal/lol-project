import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lol_app/domain/model/meme_template.dart';

class SelectTemplate extends StatelessWidget {
  const SelectTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: MemeTemplate.values.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox.square(
                      dimension: 120,
                      child: Image.asset(
                        'templates/${MemeTemplate.values[index].fileName}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
