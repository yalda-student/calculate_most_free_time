import 'package:owwn_coding_challenge/presentation/event.dart';
import 'package:owwn_coding_challenge/presentation/extension.dart';

void main() {
  final List<String> input = [
    '10:00AM-12:30PM',
    '02:00PM-02:45PM',
    '9:10AM-9:50AM',
  ];

  final splitTimes = _split(input);

  //sort
  splitTimes.sort((a, b) => a.start.toMinute().compareTo(b.start.toMinute()));

  final int maxRest = _calculateMostFreeTime(splitTimes);

  final hour = (maxRest ~/ 60).toString().padLeft(2, '0');
  final minute = maxRest.remainder(60);
  final maxRestTime = '$hour:$minute';
  print(maxRestTime);
}

int _calculateMostFreeTime(List<Event> splitTimes) {
  int maxRest = 0;

  for (int i = 0; i < splitTimes.length - 1; i++) {
    final int start = splitTimes[i].end.toMinute();
    final int end = splitTimes[i + 1].start.toMinute();

    final int diff = end - start;
    if (diff > maxRest) {
      maxRest = diff;
    }
  }
  return maxRest;
}

List<Event> _split(List<String> strArr) {
  final List<Event> events = [];
  for (final element in strArr) {
    final data = element.split('-');
    final event = Event(
      start: data[0].time12to24Format(),
      end: data[1].time12to24Format(),
    );

    events.add(event);
  }

  return events;
}
