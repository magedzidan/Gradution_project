import 'package:jiffy/jiffy.dart';

final _firstpart=Jiffy(DateTime.now()).format("E,MMM MM");
final _second_part=" at ";
final _thirdpart=Jiffy(DateTime.now()).format("jm");
final date='$firstpart$second_part$thirdpart';