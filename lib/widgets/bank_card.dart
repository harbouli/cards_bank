import 'package:cards_bank/bank_card_model.dart';
import 'package:cards_bank/constants.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.bankCard,
  }) : super(key: key);

  final BankCardModel bankCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Constants.padding, vertical: Constants.padding * 2),
      padding: const EdgeInsets.all(Constants.padding * 2),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(167, 144, 144, 144),
            blurRadius: 10,
            offset: Offset(2.0, 2.0),
          )
        ],
        image: DecorationImage(
          image: AssetImage(bankCard.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          Constants.radius,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  bankCard.icon,
                  height: Constants.padding * 3,
                  width: Constants.padding * 3,
                ),
              ),
              Text(
                bankCard.number,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
          Text(
            "\$${bankCard.balance.toStringAsFixed(2)}",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
