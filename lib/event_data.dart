class Event {
  final String eventName;
  final String eventDiscription;
  final String sDate;
  final String regLink;
  final String Organizer;
  final String eventLogo;

  Event({
    required this.eventName,
    required this.eventDiscription,
    required this.sDate,
    required this.regLink,
    required this.Organizer,
    required this.eventLogo,
  });
}

List<Event> events = [
  Event(
      eventName: "JXLDX 16.0",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "AIESEC"),
];
