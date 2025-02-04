```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check for null and key existence before accessing
      final keyValue = jsonData['key'];
      if (keyValue != null) {
        print('Value of key: $keyValue');
      } else {
        throw Exception("The 'key' is missing in the JSON response");
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); //More descriptive error message
  }
}
```