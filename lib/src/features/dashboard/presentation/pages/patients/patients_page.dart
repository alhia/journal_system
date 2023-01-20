import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:journal_system/app/router/app_router.dart';

import '../../cubit/patients/patients_cubit.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            PatientsCubit(context.read<BookingsRepository>())..load(),
        child: const PatientsView());
  }
}

class PatientsView extends StatelessWidget {
  const PatientsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = GetIt.I.get<AppRouter>();

    return BlocBuilder<PatientsCubit, PatientsState>(builder: (context, state) {
      final cubit = context.read<PatientsCubit>();
      return ScaffoldPage(
/*           header: Row(
      children: [
        Flyout(
          contentWidth: 100,
          controller: cubit.flyoutController,
          content: state.maybeMap(
              orElse: () => Container(),
              loaded: (loadedState) {
                return FlyoutContent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoLabel(
                        label: 'Status',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: Status.values
                              .map(
                                (e) => RadioButton(
                                  checked:
                                      loadedState.filters.status == e,
                                  // set onChanged to null to disable the button
                                  onChanged: (value) {
                                    if (value) {
                                      cubit.setFilter(loadedState.filters
                                          .copyWith(status: e));
                                    }
                                  },
                                  content: Text(e.name),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          child: TextButton.icon(
              icon: const Icon(FluentIcons.filter),
              label: const Text("Filter"),
              onPressed: () {
                cubit.flyoutController.open = true;
              }),
        ),
      ],
    ), */
        content: FirestoreDataTable(
            actions: const [Text('First action')],
            query: Booking.ref.orderBy('startsAt'),
            columnLabels: const {
              'firstName': Text('FirstName'),
              'status': Text('Status')
            }),
      );
    });
  }
}
/*   DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Status',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                      rows: state.maybeWhen(
                        orElse: () => [],
                        loaded: (bookings, selectedBookings, filters,
                                searchResult) =>
                            List.generate(bookings.length, (index) {
                          final booking = bookings[index];
                          return DataRow(
                            onSelectChanged: (selected) {
                              cubit.selectBooking(booking.rid);
                            },
                            selected: selectedBookings.contains(booking.rid),
                            cells: [
                              DataCell(
                                Text(
                                    "${booking.firstName} ${booking.lastName}"),
                                onTap: () =>
                                    PatientDetailsRoute(rid: booking.rid)
                                        .show(context),
                              ),
                              DataCell(
                                Text(booking.status.name.toUpperCase()),
                                placeholder: true,
                                showEditIcon: true,
                              ),
                            ],
                          );
                        }),
                      )), */