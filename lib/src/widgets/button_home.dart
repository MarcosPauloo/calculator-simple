import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualButtonClick extends ButtonClick {
  EqualButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHome extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const ButtonHome({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'CE',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
        ),
        Button(
          value: 'C',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        Button(value: '', color: Colors.grey),
        Button(
          value: '7',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '8',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '9',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '/',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '4',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '5',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '6',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '*',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '1',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '2',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '3',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '-',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '0',
          color: Colors.purple[600],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '.',
          color: Colors.purple[800],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '=',
          color: Colors.brown[600],
          onTap: (value) => onButtonClick(EqualButtonClick(value)),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  const Button(
      {super.key, required this.value, required this.color, this.onTap});

  final void Function(String value)? onTap;

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Container(
      padding: EdgeInsets.all(8),
      color: color,
      child: TextButton(
        onPressed: onTap == null ? null : () => onTap!(value),
        child: Center(
          child: Text(
            value,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
