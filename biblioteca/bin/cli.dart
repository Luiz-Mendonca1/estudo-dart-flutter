import 'dart:io';
import 'package:http/http.dart' as http;
import 'src/command_runner_base.dart';

void main() {
  final runner = CommandRunner();
  runner.run(['foo']);
}
