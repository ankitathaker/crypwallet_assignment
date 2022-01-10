import 'package:crypwallet/colors.dart';
import 'package:crypwallet/cryptocurrency_bottom_sheet.dart';
import 'package:crypwallet/dashboard_currency_item.dart';
import 'package:crypwallet/dashboard_currency_tile.dart';
import 'package:crypwallet/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Portfolio Value",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\u{20B9} 20,48,455",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    ColoredBox(
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gain/Loss",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\u{20B9} 30,038.20",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "+12.09%",
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.green, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: SvgPicture.asset(
              "images/wave_chart.svg",
              color: fabColor,
              width: MediaQuery.of(context).size.width,
              height: 250,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              itemCount: dashboardCurrencyData.length,
              itemBuilder: (BuildContext buildContext, int index) {
                return DashBoardCurrencyTile(
                  dashboardCurrencyItem: dashboardCurrencyData[index],
                  itemClick: _currencyItemClick,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  _currencyItemClick(DashboardCurrencyItem dashboardCurrencyItem) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return CryptocurrencyBottomSheet(
          dashboardCurrencyItem: dashboardCurrencyItem,
        );
      },
    );
    print(dashboardCurrencyItem.currencyName + " Clicked Here");
  }
}
