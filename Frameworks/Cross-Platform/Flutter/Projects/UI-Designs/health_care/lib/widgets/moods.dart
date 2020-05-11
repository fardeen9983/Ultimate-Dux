import 'package:flutter/material.dart';

class MoodsWidget extends StatefulWidget {
  @override
  _MoodsWidgetState createState() => _MoodsWidgetState();
}

class _MoodsWidgetState extends State<MoodsWidget> {
  List<bool> _isSelected = List.generate(5, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ToggleButtons(
        renderBorder: false,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.sentiment_very_dissatisfied,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.sentiment_dissatisfied,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.sentiment_neutral,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.sentiment_satisfied,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.sentiment_very_satisfied,
              size: 36,
            ),
          ),
        ],
        isSelected: _isSelected,
        selectedBorderColor: Colors.purple,
        fillColor: Colors.transparent,
        onPressed: (index) => this.setState(() {
          _isSelected = _isSelected.map((_) => false).toList();
          _isSelected[index] = true;
        }),
      ),
    );
  }
}
