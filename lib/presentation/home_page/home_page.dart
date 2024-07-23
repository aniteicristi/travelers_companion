import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travelers_companion/presentation/home_page/journals_controller.dart';
import 'package:dartx/dartx.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final journals = ref.watch(journalsControllerProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Journals',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSurface,
              ),
              height: 2,
            ),
            journals.when(
              data: (journals) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final journal in journals
                      .sortedBy((journal) => journal.favorite ? 0 : 1))
                    ListTile(
                      title: Text(journal.title),
                      subtitle: Text(journal.date.toString()),
                      trailing: journal.favorite
                          ? const Icon(Icons.star)
                          : const Icon(Icons.star_border),
                    ),
                ],
              ),
              error: (_, __) => const Text('Error'),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
