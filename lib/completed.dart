import 'package:crypwallet/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "images/completed.svg",
                color: Colors.teal.shade300,
                width: 200,
                height: 200,
              ),
              Text(
                "Completed",
                style: TextStyle(
                  color: Colors.teal.shade300,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              clipBehavior: Clip.none,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonColor,
                ),
                shape: MaterialStateProperty.all(
                  StadiumBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 10.0,
                    ),
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
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 8.0,
                ),
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
