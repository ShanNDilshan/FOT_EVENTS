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
      eventName: "EVENT X",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "XZ6"),
  Event(
      eventName: "EVENT D",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "XZ8"),
  Event(
      eventName: "EVENT Z",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "CLUB Z"),
  Event(
      eventName: "EVE C",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "XZ-1D"),
  Event(
      eventName: "DG-Z",
      eventDiscription: "lorem spirilum le event discriptionet",
      sDate: "20-6-24",
      regLink: 'https://example.com/apply2',
      eventLogo: 'assets/events/sampleevent.jpg',
      Organizer: "ORG-Ze"),
];
