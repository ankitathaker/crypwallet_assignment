import 'package:crypwallet/dashboard_currency_item.dart';
import 'package:flutter/material.dart';

class DashBoardCurrencyTile extends StatelessWidget {
  DashboardCurrencyItem dashboardCurrencyItem;
  Function itemClick;

  DashBoardCurrencyTile({
    Key? key,
    required this.dashboardCurrencyItem,
    required this.itemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: dashboardCurrencyItem.currencyIcon,
      title: Text(dashboardCurrencyItem.currencyName,
      style: Theme.of(context).textTheme.bodyText2,
      ),
      subtitle: Text(
        "${dashboardCurrencyItem.quantity} ${dashboardCurrencyItem.shortName}",
      ),
      trailing: Column(
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
            "(${dashboardCurrencyItem.percentageStr}%)",
            style: TextStyle(
              color: dashboardCurrencyItem.percentageColor,
            ),
          ),
        ],
      ),
      onTap: () {
        itemClick(dashboardCurrencyItem);
      },
    );
  }
}
