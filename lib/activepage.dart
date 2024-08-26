import 'package:flutter/material.dart';
import 'package:fot_eventsx/event_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivePage extends StatefulWidget {
  const ActivePage({super.key});

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
  Future<void> launchUr(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];

            return Column(
              children: [
                Card(
                  shape: Border.all(style: BorderStyle.solid),
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset(
                        event.eventLogo,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(event.eventName),
                      subtitle: Text('Event Date: ${event.sDate}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.link),
                        onPressed: () async {
                          final Uri url = Uri.parse(event.regLink);

                          launchUr(url);
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
          }),
    );
  }
}
