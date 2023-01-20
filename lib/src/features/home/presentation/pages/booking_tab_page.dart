import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:journal_system/app/router/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({Key? key}) : super(key: key);
  final tabItems = const [Text("Curativum"), Text("Boka")];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: const [HomeRoute(), BookingTab()],
      builder: (context, child, animation) {
        bool reverse = false;

        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: InkWell(
                child: const Text("Curativum"),
                onTap: () => tabsRouter.setActiveIndex(1),
              ),
              actions: getValueForScreenType<bool>(
                context: context,
                mobile: false,
                tablet: false,
                desktop: true,
              )
                  ? [
                      TextButton(
                        child: const Text("Boka"),
                        onPressed: () => tabsRouter.setActiveIndex(1),
                      ),
                    ]
                  : null,
            ),
            drawer: getValueForScreenType<bool>(
              context: context,
              mobile: true,
              tablet: true,
              desktop: false,
            )
                ? Drawer(
                    child: ListView(
                      children: [
                        ListTile(
                          title: const Text("Boka"),
                          onTap: () => tabsRouter.setActiveIndex(1),
                        ),
                      ],
                    ),
                  )
                : null,
            key: const Key('Home-tab'),

            /* pane: NavigationPane(
              onChanged: tabsRouter.setActiveIndex,
              items: [
                PaneItem(icon: Container(), title: const Text("Curativum")),
                PaneItem(icon: Container(), title: const Text("Book")),
              ],
            ), */
            body: FadeTransition(
              opacity: animation,
              child: child,
            )

            /* NavigationBody(
            index: tabsRouter.activeIndex,
            animationDuration: const Duration(milliseconds: 250),
            transitionBuilder: (widget, animation) {
              return EntrancePageTransition(
                child: widget,
                animation: animation,
              );
            },
            children: const [
              DashboardPage(),
              AppointmentsPage(),
              PatientsPage()
            ],
          ), */
            );
      },
    );
  }
}
