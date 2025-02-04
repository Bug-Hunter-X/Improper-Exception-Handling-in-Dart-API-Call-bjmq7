# Improper Exception Handling in Dart API Call

This repository demonstrates a common error in Dart code: improper exception handling when fetching and parsing data from an API. The code fetches data, but it doesn't handle missing keys in the JSON response or provide specific error messages.  This makes debugging more difficult.

The `bug.dart` file contains the flawed code.  The `bugSolution.dart` file shows a corrected version with improved error handling.

## How to run

1. Clone the repository
2. Run `bug.dart` to see the generic error handling.
3. Run `bugSolution.dart` to see the improved error handling.
