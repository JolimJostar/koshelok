import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/ui/lce/error/error.dart';
import 'package:medtech/base/ui/lce/loading.dart';
import 'package:medtech/base/ui/theme/provider.dart';
import 'package:medtech/feature/main/ui/presenter.dart';
import 'package:medtech/feature/new_project/ui/contract.dart';
import 'package:medtech/feature/new_project/ui/presenter.dart';

import 'content.dart';

class NewProjectPage extends HookConsumerWidget {
  const NewProjectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final state = ref.watch(newProjectPresenterProvider);
    final dashboardPresenter = ref.watch(mainPresenterProvider.notifier);
    final presenter = ref.watch(newProjectPresenterProvider.notifier);

    useEffect(
      () {
        Future.delayed(Duration.zero, presenter.load);

        final subscription = presenter.singleEvents.listen((event) {
          if (event is ShowMessageEvent) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(event.message)),
            );
          } else if (event is NavigateBackEvent) {
            Navigator.of(context).pop(
              event.projectDetails ?? event.draftDetails,
            );
          } else if (event is ReloadDashboardEvent) {
            dashboardPresenter.load();
          }
        });
        return () => subscription.cancel();
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.close, color: theme.colorMain),
        ),
        centerTitle: false,
        title: const Text(
          'Новый проект',
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      body: state.map(
        content: (content) => NewProjectScreen(state: content),
        loading: (_) => const LoadingScreen(),
        error: (error) => ErrorScreen(
          errorStates: error.errorStates,
        ),
      ),
    );
  }
}
