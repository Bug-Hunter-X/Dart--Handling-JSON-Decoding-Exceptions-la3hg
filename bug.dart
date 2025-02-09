```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data from the JSON response
      print(jsonData['key']);
    } else {
      // Handle error responses
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions during the process
    print('An error occurred: $e');
    // Consider re-throwing the exception based on your application's needs
    rethrow;
  }
}
```