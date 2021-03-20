// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:the_coterie_club/main.dart';

// I/flutter ( 4616): {userId: 1350487795323758, token: EAAW2s18xZAeQBABu0WlEUMFaeBtuoPTtIfn92ZAzJharxvA99Gtsay4dYxciX9Gpfit7cKSV5N0QdKiY7iud2FaWkRA3bcRiL8IFZCQzzwQWhurCqBMaoWzcGM6hDoYwrMP2msTFHmZA5NRobCmbcWLELSOheaFAsMhzqBZB0hqEitzDEDLeWLcZAZCAz75fcKGyOuv5FozPKFNXYlmvUmgO9N1f49cGygM3bCsHZBuZC4QZDZD, expires: 2021-05-18T22:13:06.985, lastRefresh: 2021-03-20T16:01:06.985, applicationId: 1608256396027364, graphDomain: null, isExpired: false, grantedPermissions: [public_profile, email], declinedPermissions: []}


void main() {
  test('Counter increments smoke test', () async {
    final r = await http.post(Uri.parse('http://localhost:8080/login'),
        body: {"id": "1350487795323758", "token": "EAAW2s18xZAeQBABu0WlEUMFaeBtuoPTtIfn92ZAzJharxvA99Gtsay4dYxciX9Gpfit7cKSV5N0QdKiY7iud2FaWkRA3bcRiL8IFZCQzzwQWhurCqBMaoWzcGM6hDoYwrMP2msTFHmZA5NRobCmbcWLELSOheaFAsMhzqBZB0hqEitzDEDLeWLcZAZCAz75fcKGyOuv5FozPKFNXYlmvUmgO9N1f49cGygM3bCsHZBuZC4QZDZD"});

    print(r.body);
  });
}
