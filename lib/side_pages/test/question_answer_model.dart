List<String> question = [
  'How often do you have a drink containing alcohol ?',
  'How many drinks containing alcohol do you have on a typical day when your drinking ?',
  'how often do you have six or more drinks on one occasion ?',
  'How often during the last year have y found that you were not able to stop drinking once you had started ?',
  'How often during the last year you have you failed to do what was normally expected from you because of drinking ?'
];
List<List<String>> answer = [
  [
    'Never',
    'Monthly or less',
    '2 to 4 times a month',
    '2 ot 3 weeks a month',
    '4 or more times a week',
  ],
  [
    '1 or 2',
    '3 or 4',
    '5 or 6',
    '7, 8 or 9',
    '10 or more',
  ],
  [
    'Never',
    'Less than Monthly',
    'Monthly',
    'Weekly',
    'Daily or almost Daily',
  ],
  [
    'Never',
    'Less than Monthly',
    'Monthly',
    'Weekly',
    'Daily or almost Daily',
  ],
  [
    'Never',
    'Less than Monthly',
    'Monthly',
    'Weekly',
    'Daily or almost Daily',
  ]
];

class Questions {
  Questions({required this.question, required this.answer});
  final String question;
  final List<String> answer;
}

List<Questions> savalgal = [
  Questions(question: question[0], answer: answer[0]),
  Questions(question: question[1], answer: answer[1]),
  Questions(question: question[2], answer: answer[2]),
  Questions(question: question[3], answer: answer[3]),
  Questions(question: question[4], answer: answer[4]),
];
