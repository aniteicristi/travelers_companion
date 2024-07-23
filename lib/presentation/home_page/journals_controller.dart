import 'package:dartx/dartx.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelers_companion/domain/journal.dart';

part 'journals_controller.g.dart';

@riverpod
class JournalsController extends _$JournalsController {
  @override
  Future<List<Journal>> build() async {
    await 1.seconds.delay;
    return [
      Journal(
        title: 'My first journal',
        date: DateTime.now(),
        favorite: true,
      ),
      Journal(
        title: 'My second journal',
        date: DateTime.now(),
        favorite: false,
      ),
      Journal(
        title: 'My third journal',
        date: DateTime.now(),
        favorite: false,
      ),
    ];
  }
}
