import 'package:crypwallet/dashboard_currency_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<DashboardCurrencyItem> dashboardCurrencyData = [
  DashboardCurrencyItem(
    currencyIcon: SvgPicture.asset(
      "images/ethereum_coin.svg",
      color: Colors.blueGrey,
    ),
    currencyName: "Ethereum",
    shortName: "ETH",
    quantity: "1.0034",
    rate: "\u{20B9} 343,506.79",
    percentage: -0.10,
  ),
  DashboardCurrencyItem(
    currencyIcon: SvgPicture.asset(
      "images/bitcoin.svg",
      width: 35,
      height: 35,
    ),
    currencyName: "Bitcoin",
    shortName: "BTC",
    quantity: "0.019",
    rate: "\u{20B9} 40,42,506.79",
    percentage: 1.17,
  ),
  DashboardCurrencyItem(
    currencyIcon: SvgPicture.asset(
      "images/ethereum_coin.svg",
      color: Colors.blueGrey,
    ),
    currencyName: "Ethereum",
    shortName: "ETH",
    quantity: "1.0034",
    rate: "\u{20B9} 343,506.79",
    percentage: -0.10,
  ),
];
