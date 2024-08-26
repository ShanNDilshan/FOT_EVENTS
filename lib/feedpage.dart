import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'organization_data.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
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
        itemCount: organizations.length,
        itemBuilder: (context, index) {
          final organization = organizations[index];
          return Column(
            children: [
              Card(
                shape: Border.all(style: BorderStyle.solid),
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(
                      organization.logoPath,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(organization.name),
                    subtitle: Text('End Date: ${organization.endDate}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.link),
                      onPressed: () async {
                        final Uri url = Uri.parse(organization.applicationLink);

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
        },
      ),
    );
  }
}
