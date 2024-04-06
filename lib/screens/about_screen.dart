import 'package:demo_flutter_sales/screens/common/index.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class AboutScreen extends StatefulWidget {
  static const String routeName = 'about';

  const AboutScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: [
          FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (context, ss) => FormSection(children: [
              FormRow(
                title: const Text('App Name'),
                trailing: Text(ss.data?.appName ?? ''),
              ),
              FormRow(
                title: const Text('Version'),
                trailing: Text(ss.data?.version ?? ''),
              ),
              FormRow(
                title: const Text('Build Number'),
                trailing: Text(ss.data?.buildNumber ?? ''),
              ),
            ]),
          ),
          FormSection(children: [
            FormRow(
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.open_in_new),
              onTap: () {},
            ),
          ]),
        ],
      ),
    );
  }
}
