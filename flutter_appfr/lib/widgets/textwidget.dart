import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  final String name;
  final bool isBold;
  final int maxLines;
  final TextOverflow ?overflow;
  

  Textwidget({super.key, required this.name, this.isBold = false , required this.maxLines, this.overflow,});
  @override
  Widget build(BuildContext context) {

    return Text(
      name,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: isBold ? 24 : 16,
        fontWeight: isBold ? FontWeight.bold : null,
        
      ),
    
    
    );
  }
}
