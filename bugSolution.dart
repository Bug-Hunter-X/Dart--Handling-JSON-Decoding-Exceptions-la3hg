```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['key']);
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
      } catch (e) {
        print('An error occurred while parsing JSON: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```