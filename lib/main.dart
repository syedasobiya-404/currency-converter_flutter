import 'package:flutter/material.dart';

void main() {
  runApp(
    CurrencyConverter(),
  );
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<StatefulWidget> createState() {
    return CurrencyConverterState();
  }
}

class CurrencyConverterState extends State {
  final TextEditingController controller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Currency Converter",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Currency Convertor",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Rs. $result",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                TextField(
                  // controller: TextEditingController(),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.attach_money,
                    ),
                    // enabledBorder: UnderlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    hintText: "Enter Your Amount In Rupees",
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(
                      double.infinity,
                      55,
                    ),
                  ),
                  onPressed: () {
                    // print("👍👍👍");
                    // print(controller);
                    // print(controller.text * 280);
                    if (controller.text.isNotEmpty) {
                      result = double.parse(controller.text) * 280;
                      print(double.parse(controller.text) * 280);
                    }

                    setState(() {});
                  },
                  child: Text(
                    "Convert",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
