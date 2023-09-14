import 'package:college_docs/side_pages/test/question_answer_model.dart';
import 'package:flutter/material.dart';

class TestMain extends StatefulWidget {
  const TestMain({super.key});

  @override
  State<TestMain> createState() => _TestMainState();
}

class _TestMainState extends State<TestMain> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Questions question = savalgal[index];
    return Scaffold(
      appBar: AppBar(
        title: Text('TAKE TEST'),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                if (index > 0)
                  setState(() {
                    index--;
                  });
              },
              child: Text('Previous'),
            ),
            ElevatedButton(
              onPressed: () {
                if (index < 4)
                  setState(() {
                    index++;
                  });
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Q.${index + 1}/10',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 30,
            child: Text(
              question.question,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          ...question.answer.map(
            (ans) => Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(ans),
                    clipBehavior: Clip.hardEdge,
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      fixedSize: Size(300, double.infinity),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: Color.fromARGB(122, 22, 255, 123),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
