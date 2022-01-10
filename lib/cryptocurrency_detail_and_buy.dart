import 'package:crypwallet/dashboard_currency_item.dart';
import 'package:crypwallet/swipe_button.dart';
import 'package:flutter/material.dart';

class CryptocurrencyDetailAndBuyPage extends StatelessWidget {
  CryptocurrencyDetailAndBuyPage({
    Key? key,
  }) : super(key: key);

  final String _balance = "1,30,000.52";

  final TextEditingController quantityController = TextEditingController();
  final TextEditingController totalAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dashboardCurrencyItem =
        ModalRoute.of(context)!.settings.arguments as DashboardCurrencyItem;

    quantityController.text = dashboardCurrencyItem.quantity;
    totalAmountController.text = dashboardCurrencyItem.rate;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: BackButton(
              color: Colors.blue.shade800,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              child: dashboardCurrencyItem.currencyIcon,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dashboardCurrencyItem.currencyName,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  dashboardCurrencyItem.shortName,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${dashboardCurrencyItem.rate}",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "${dashboardCurrencyItem.percentageStr}%",
                style: TextStyle(
                  backgroundColor:
                      dashboardCurrencyItem.percentageColor.withOpacity(0.2),
                  color: dashboardCurrencyItem.percentageColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shadowColor: Colors.white,
                elevation: 15,
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        "Balance $_balance",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Buy Price",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    ColoredBox(
                                      child: SizedBox(
                                        width: 25,
                                      ),
                                      color: Colors.amber,
                                    ),
                                    Text("CURRENT",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1),
                                  ],
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Quantity",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    const ColoredBox(
                                      child: SizedBox(
                                        width: 35,
                                      ),
                                      color: Colors.red,
                                    ),
                                    Text(
                                      dashboardCurrencyItem.shortName,
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Text(
                                  "Total Amount",
                                  style: Theme.of(context).textTheme.bodyText2,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  dashboardCurrencyItem.rate,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Text(
                                  dashboardCurrencyItem.quantity,
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Text(
                                  "416172.84",
                                  style: Theme.of(context).textTheme.headline2,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SwipeButton()
            ],
          ),
        ),
      ),
    );
  }

  _buyCurrency() {
    print("Buy Currency");
  }
}
