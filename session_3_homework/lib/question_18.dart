/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/
void main() {
  Map<String, String?> environmentVariables = {
    'mode': 'prod',
    'api': null,
    'region': 'eu',
  };

  if (environmentVariables['api'] == null) {
    environmentVariables['api'] = 'NOT_SET';
  }
  String mode = environmentVariables['mode']!;
  String api = environmentVariables['api']!;
  print(environmentVariables.values.toString().toUpperCase());
  if (mode.toUpperCase() == 'PROD' && api.toUpperCase() == "NOT_SET") {
    print('Non-prod');
  } else {
    print('Prod ready');
  }
}
