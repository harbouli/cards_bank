import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            "Your card number",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 2,
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) => index + 1)
                .map(
                  (e) => Center(
                    child: Text(
                      e.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
