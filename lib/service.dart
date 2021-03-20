import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> login(String id, String token) async {
  return 'show';
  print('logging in');
  final r = await http.post(Uri.parse('https://e1def6f50501.ngrok.io/login'), body: {
    "id": "1350487795323758",
    "token":
        "EAAW2s18xZAeQBABu0WlEUMFaeBtuoPTtIfn92ZAzJharxvA99Gtsay4dYxciX9Gpfit7cKSV5N0QdKiY7iud2FaWkRA3bcRiL8IFZCQzzwQWhurCqBMaoWzcGM6hDoYwrMP2msTFHmZA5NRobCmbcWLELSOheaFAsMhzqBZB0hqEitzDEDLeWLcZAZCAz75fcKGyOuv5FozPKFNXYlmvUmgO9N1f49cGygM3bCsHZBuZC4QZDZD"
  });

  print(r.body);

  if (jsonDecode(r.body)['ok'] == 'false') {
    return 'error';
  } else {
    return jsonDecode(r.body)['registered'] as bool ? 'ok' : 'show';
  }
}
