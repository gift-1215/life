import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class DynamicLinkServices {
  static final DynamicLinkServices _singleton = DynamicLinkServices._internal();
  DynamicLinkServices._internal();
  static DynamicLinkServices get instance => _singleton;

  void createDynamicLink() async {
    final dynamicLinkParams = DynamicLinkParameters(
        link: Uri.parse("https://airyzone.page.link.com"),
        uriPrefix: "https://airyzone.page.link",
        androidParameters:
            const AndroidParameters(packageName: "com.testing.life"),
        iosParameters: const IOSParameters(bundleId: "com.testing.life"));

    final dynamicLink =
        await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
  }
}
