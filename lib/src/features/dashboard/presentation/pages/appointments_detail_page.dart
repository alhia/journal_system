import 'package:auto_route/auto_route.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/details/details_cubit.dart';

class AppointmentsDetailsPage extends StatefulWidget {
  const AppointmentsDetailsPage({Key? key, @PathParam('rid') required this.rid})
      : super(key: key);
  final String rid;

  @override
  State<AppointmentsDetailsPage> createState() =>
      _AppointmentsDetailsPageState();
}

class _AppointmentsDetailsPageState extends State<AppointmentsDetailsPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context);

    return BlocBuilder<DetailsCubit, DetailsState>(
        bloc: DetailsCubit(context.read<BookingsRepository>())
          ..load(widget.rid),
        builder: (context, state) {
          return NavigationView(
            appBar: NavigationAppBar(
                title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Appointment details",
                  style: TextStyle(fontSize: 15),
                ),
                state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (booking) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${booking.firstName} ${booking.lastName}"),
                            Text(booking.email),
                          ]);
                    })
              ],
            )),
            pane: NavigationPane(
              selected: index,
              onChanged: (newIndex) => setState(() {
                index = newIndex;
              }),

              /// The current selected index
              /// Called whenever the current index changes
              displayMode: PaneDisplayMode.top,
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.info),
                  title: const Text('Basic info'),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.edit_note),
                  title: const Text('Notes'),
                ),
              ],
            ),
            content: NavigationBody(
              index: index,
              children: [
                state.maybeWhen(
                    loaded: (booking) => GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          children: [
                            ListTile(
                              title: const Text("Name"),
                              subtitle: Text(
                                  "${booking.firstName} ${booking.lastName}"),
                            ),
                            ListTile(
                              title: const Text("Email"),
                              subtitle: Text(booking.email),
                            ),
                            ListTile(
                              title: const Text("RID"),
                              subtitle: BarcodeWidget(
                                barcode: Barcode.code128(),
                                data: booking.rid,
                              ),
                            ),
                          ],
                        ),
                    orElse: () => Container()),
                const Text("details")
              ],
            ),
          );
        });
  }
}
