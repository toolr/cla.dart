library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {
  var paths = ['bin/${1}.dart']; // etc, etc, etc

  addTask('docs', createDartDocTask(paths, linkApi: true));
  
  addTask('analyze_libs', createAnalyzerTask(paths));
  
  runHop(args);
}
