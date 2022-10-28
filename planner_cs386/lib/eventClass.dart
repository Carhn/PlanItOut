class Event {
  String eventName;
  int startTime, endTime;
  bool repeatable;

  Event(this.eventName, this.startTime, this.endTime, this.repeatable);

  void addNewEvent() {}

  void setAlarm() {}

  void isRepeatable() {
    int i;
    if (repeatable == true) {
      for (/*number of times to repeat the event*/ i = 0; i < 1; i++) {
        addNewEvent();
      }
    }
  }
}
