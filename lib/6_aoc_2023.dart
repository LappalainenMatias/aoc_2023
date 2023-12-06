import 'dart:math';

class SingleRecord {
  int time;
  int distance;

  SingleRecord(this.time, this.distance);

  @override
  toString() {
    return 'time: $time, distance: $distance';
  }
}

int calculateRecords() {
  const input = shortInput;
  SingleRecord record = createRecords(input);
  var res = solveEquation(record);
  return (res[1] - res[0] + 1);
}

List<int> solveEquation(SingleRecord record) {
  double a = -1;
  double b = record.time.toDouble();
  double c = -1 * record.distance.toDouble();
  var first = (-1 * b + sqrt(b * b - 4 * a * c)) / (2 * a).floor();
  var second = (-1 * b - sqrt(b * b - 4 * a * c)) / (2 * a).ceil();
  return [(first + 1).floor(), (second - 1).ceil()];
}

SingleRecord createRecords(String input) {
  List<String> lines = input.split('\n');
  var times = lines[0].split(':')[1].replaceAll(" ", "");
  var distances = lines[1].split(':')[1].replaceAll(" ", "");
  return SingleRecord(int.parse(times), int.parse(distances));
}

int part2() {
  int time = 44806572;
  int distance = 208158110501102;
  double x = distance / (distance / time);
  double center = (time / 2);
  double radius = center - x;
  print(radius);
  return 0;
}


// 34278221
// 44806572
const shortInput = '''Time:        44     80     65     72
Distance:   208   1581   1050   1102
''';
