import 'package:auto_route/auto_route.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Icons, SearchDelegate, Theme;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal_system/app/router/app_router.dart';

import '../cubit/dashboard_cubit.dart';

class DashboardTabPage extends StatelessWidget {
  const DashboardTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            DashboardCubit(context.read<BookingsRepository>())..init(),
        child: FluentTheme(
          data: Theme.of(context).brightness == Brightness.light
              ? ThemeData.light()
              : ThemeData.dark(),
          child: const DashboardTabView(),
        ));
  }
}

class DashboardTabView extends StatelessWidget {
  static final _focusNode = FocusNode();
  static final _searchController = TextEditingController();

  const DashboardTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context);
    final theme = Theme.of(context);

    return AutoTabsRouter(
      routes: const [DashboardTab(), AppointmentsTab(), PatientsTab()],
      builder: (context, child, animation) {
        final cubit = context.read<DashboardCubit>();

        final tabsRouter = AutoTabsRouter.of(context);
        return NavigationView(
          appBar: NavigationAppBar(
              title: TextBox(
                controller: _searchController,
                focusNode: _focusNode,
                onChanged: cubit.onQueryChange,
              ),
              actions: IconButton(
                  icon: const Icon(Icons.search), onPressed: (() {}))),
          pane: NavigationPane(
              selected: tabsRouter.activeIndex,
              onChanged: tabsRouter.setActiveIndex,
              items: [
                PaneItem(
                    icon: const Icon(Icons.dashboard),
                    title: const Text('Dashboard')),
                PaneItem(
                    icon: const Icon(Icons.calendar_today),
                    title: const Text('Appointments')),
                PaneItem(
                    icon: const Icon(Icons.people),
                    title: const Text('Patients'))
              ]),
          content: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
            return Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    _searchController.clear();
                    cubit.init();
                  },
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
                state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (searchResults) => Acrylic(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final result = searchResults[index];
                              print(result);

                              return GestureDetector(
                                child: ListTile(
                                  title: Text(
                                      result.firstName + ' ' + result.lastName),
                                  trailing: Text(result.rid),
                                ),
                                onTap: () {
                                  tabsRouter
                                      .navigateNamed('patients/${result.rid}');
                                  _searchController.clear();
                                  cubit.init();
                                },
                              );
                            },
                            itemCount: searchResults.length,
                          ),
                        )),
              ],
            );
          }),
        );
        /*      return Scaffold(
            key: scaffoldKey,
            drawer: getValueForScreenType(
                    context: context,
                    mobile: true,
                    desktop: false,
                    tablet: false,
                    watch: false)
                ? SideMenu(tabsRouter: tabsRouter)
                : null,
            body: BlocListener<DashboardCubit, DashboardState>(
              listener: (context, state) {
                print("object");
                state.whenOrNull(
                    showPatient: (rid) => AutoRouter.of(context).pushAll([
                          const PatientsRoute(),
                          PatientDetailsRoute(rid: rid)
                        ]).then((value) => cubit.init()));
              },
              child: FloatingSearchAppBar(
                alwaysOpened: true,
                automaticallyImplyDrawerHamburger: false,
                onQueryChanged: cubit.onQueryChange,
                body: Stack(
                  children: [
                    Row(
                      children: [
                        getValueForScreenType(
                          context: context,
                          mobile: Container(),
                          desktop: SideMenu(tabsRouter: tabsRouter),
                          tablet: NavigationRail(
                            selectedIndex: tabsRouter.activeIndex,
                            destinations: const [
                              NavigationRailDestination(
                                label: Text('Dashboard'),
                                icon: Icon(Icons.dashboard),
                              ),
                              NavigationRailDestination(
                                label: Text('Appointments'),

                                // selected: tabsRouter.activeIndex == 0,
                                icon: Icon(Icons.dashboard),
                              ),
                              NavigationRailDestination(
                                label: Text('Patients'),
                                // selected: tabsRouter.activeIndex == 0,
                                icon: Icon(Icons.people),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: FadeTransition(
                            opacity: animation,
                            child: const AutoRouter(),
                          ),
                        ),
                        /*    CollapsibleSidebar(
                              sidebarBoxShadow: const [],
                              items: [
                                CollapsibleItem(
                                    isSelected: tabsRouter.activeIndex == 0,
                                    text: 'Dashboard',
                                    icon: Icons.dashboard,
                                    onPressed: () => tabsRouter.setActiveIndex(0)),
                                CollapsibleItem(
                                    isSelected: tabsRouter.activeIndex == 1,
                                    text: 'Appointments',
                                    icon: Icons.calendar_today,
                                    onPressed: () => tabsRouter.setActiveIndex(1)),
                                CollapsibleItem(
                                    isSelected: tabsRouter.activeIndex == 2,
                                    text: 'Patients',
                                    icon: Icons.people,
                                    onPressed: () => tabsRouter.setActiveIndex(2)),
                              ],
                              title: 'Alex Hiam',
                              body: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            ), */
                      ],
                    ),
                    state.maybeMap(
                        loaded: (value) => Card(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: value.searchResult.length,
                                itemBuilder: (context, index) {
                                  final booking = value.searchResult[index];
                                  return ListTile(
                                    title: Text(
                                        "${booking.firstName} ${booking.lastName}"),
                                    subtitle: Text(booking.rid),
                                    onTap: () =>
                                        cubit.selectBooking(booking.rid),
                                  );
                                },
                              ),
                            ),
                        orElse: () => Container()),
                  ],
                ),
              ),
            ),
            endDrawer: state.whenOrNull(
                showPatient: (rid) => PatientDetailsPage(rid: rid)),
          ); */

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
   */
      },
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    /*   return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: getValueForScreenType(
                context: context,
                mobile: null,
                tablet: null,
                desktop: const Text('Dashboard')),
            selected: tabsRouter.activeIndex == 0,
            leading: const Icon(Icons.dashboard),
            onTap: () => tabsRouter.setActiveIndex(0),
          ),
          ListTile(
            title: getValueForScreenType(
                context: context,
                mobile: null,
                tablet: null,
                desktop: const Text('Appointments')),
            selected: tabsRouter.activeIndex == 1,
            leading: const Icon(Icons.calendar_today),
            onTap: () => tabsRouter.setActiveIndex(1),
          ),
          ListTile(
            title: getValueForScreenType(
                context: context,
                mobile: null,
                tablet: null,
                desktop: const Text('Patients')),
            selected: tabsRouter.activeIndex == 2,
            leading: const Icon(Icons.people),
            onTap: () => tabsRouter.setActiveIndex(2),
          ),
        ],
      ), 
    ); */
    return Container();
  }
}
