import 'package:flutter/material.dart';
import 'package:flutter_day8/widgets/text_widget.dart';
import 'package:flutter_day8/models/character.dart';
class InformationPage extends StatelessWidget {
  final Character character;
  const InformationPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextWidget(
              name: character.id.toString(),
              num: 0,
            ),
            const SizedBox(height: 12),
            Image.network(character.imageUrl.toString()),
            const SizedBox(height: 12),
            TextWidget(
              name: character.name!,
              isBold: true,
              num: 0,
            )
          ],
        ),
      ),
    );
  }
}
