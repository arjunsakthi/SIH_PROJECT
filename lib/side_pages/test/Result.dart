import 'package:flutter/material.dart';

class TestResult extends StatelessWidget {
  const TestResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Card(
          elevation: 10,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            width: double.infinity,
            height: 200,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Alcoholic Addction',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('The Alcohol use Disorders identification Test (AuDIT)'),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text('Addiction'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color.fromARGB(208, 35, 230, 248),
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
