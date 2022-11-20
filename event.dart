class Event {
  String start;
  String end;
  int toMinute = 0;

  Event({required this.start, required this.end});

  @override
  String toString() {
    return 'Event{start: $start, end: $end}';
  }
}
