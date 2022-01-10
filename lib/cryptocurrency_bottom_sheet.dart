import 'package:crypwallet/colors.dart';
import 'package:crypwallet/dashboard_currency_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptocurrencyBottomSheet extends StatelessWidget {
  final DashboardCurrencyItem dashboardCurrencyItem;

  const CryptocurrencyBottomSheet({
    Key? key,
    required this.dashboardCurrencyItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: dashboardCurrencyItem.currencyIcon,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dashboardCurrencyItem.currencyName,
                  ),
                  Text(
                    dashboardCurrencyItem.shortName,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.add_alert_rounded,
                  ),
                  Text("PRICE ALERT"),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.stars_rounded,
                  ),
                  Text("FAVORITE"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          ColoredBox(
            color: Colors.grey,
            child: SizedBox(
              height: 0.5,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(dashboardCurrencyItem.rate),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "${dashboardCurrencyItem.percentage}%",
                  style: TextStyle(
                    backgroundColor:
                        dashboardCurrencyItem.percentageColor.withOpacity(0.2),
                    color: dashboardCurrencyItem.percentageColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            clipBehavior: Clip.none,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                buttonColor,
              ),
              shape: MaterialStateProperty.all(
                StadiumBorder(
                  side: BorderSide(color: Colors.black, width: 10.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: Colors.grey.shade100,
                  width: 3.0,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                "/currency-detail",
                arguments: dashboardCurrencyItem,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 8.0,
              ),
              child: Text(
                "Buy",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
