extension TimeExtension on String {
  String time12to24Format() {
    int h = int.parse(split(":").first);
    final int m = int.parse(split(":").last[0] + split(":").last[1]);

    final String meridian =
        (split(":").last[2] + split(":").last[3]).toLowerCase();
    if (meridian == "pm") {
      if (h != 12) {
        h = h + 12;
      }
    }
    if (meridian == "am") {
      if (h == 12) {
        h = 00;
      }
    }
    final String newTime = "${h == 0 ? "00" : h}:${m == 0 ? "00" : m}";

    return newTime;
  }

  int toMinute() {
    int h = int.parse(split(":").first);
    final int m = int.parse(split(":").last[0] + split(":").last[1]);
    return h * 60 + m;
  }
}
