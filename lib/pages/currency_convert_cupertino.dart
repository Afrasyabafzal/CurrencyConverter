import 'package:flutter/cupertino.dart';

class CurrentConverterCupertinoPage extends StatefulWidget {
  const CurrentConverterCupertinoPage({super.key});

  @override
  State<CurrentConverterCupertinoPage> createState() =>
      _CurrentConverterCupertinoPageState();
}

class _CurrentConverterCupertinoPageState
    extends State<CurrentConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textcontroller = TextEditingController();

  @override
  void dispose() {
    textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Converter'),
        backgroundColor: CupertinoColors.systemGrey3,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                controller: textcontroller,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: 'Enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textcontroller.text) * 276;
                  });
                },
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
