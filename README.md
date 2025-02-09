# Dart: Handling JSON Decoding Exceptions

This repository demonstrates a common error in Dart when working with JSON data: not handling potential exceptions during JSON decoding.  The `jsonDecode` function can throw a FormatException if the response body isn't valid JSON.  The `bug.dart` file shows the original code with the error, while `bugSolution.dart` provides a corrected version.

## Bug Description

The original code lacks robust error handling.  If the server returns an invalid JSON response or a network error occurs, the application will crash.  This example shows how to catch and handle the `FormatException` thrown by `jsonDecode`.

## Solution

The improved code uses a `try-catch` block to gracefully handle exceptions during JSON decoding and network requests.  It checks the HTTP status code and throws custom exceptions if necessary, allowing for more informative error handling and preventing unexpected app crashes.