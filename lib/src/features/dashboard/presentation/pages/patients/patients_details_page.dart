import 'package:authentication_repository/authentication_repository.dart'
    hide User;
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:timelines/timelines.dart';

import '../../../services/barcode_service.dart';
import '../../cubit/patients/details/patients_details_cubit.dart';

class PatientDetailsPage extends StatelessWidget {
  const PatientDetailsPage({Key? key, @PathParam('rid') required this.rid})
      : super(key: key);
  final String rid;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mdq = MediaQuery.of(context);
    final labelStyle = theme.textTheme.bodyMedium
        ?.copyWith(color: theme.textTheme.bodyMedium?.color?.withOpacity(0.6));

    return BlocProvider(
      create: (context) => PatientsDetailsCubit(
          context.read<BookingsRepository>(),
          authRepository: context.read<AuthenticationRepository>())
        ..load(rid),
      child: BlocBuilder<PatientsDetailsCubit, PatientsDetailsState>(
        builder: (context, state) {
          final cubit = context.read<PatientsDetailsCubit>();
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (booking, editMode) {
                final inputDecoration = InputDecoration(
                    disabledBorder: InputBorder.none,
                    isCollapsed: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabled: editMode,
                    contentPadding: const EdgeInsets.only(bottom: 8, top: 4));
                return Scaffold(
                  appBar: AppBar(
                    leading: TextButton.icon(
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Patients"),
                      onPressed: () {
                        final router = AutoRouter.of(context);
                        router.navigateBack();
                      },
                    ),
                  ),
                  body: Padding(
                    padding: EdgeInsets.all(mdq.size.width * 0.02),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Wrap(
                          children: [
                            Wrap(
                              children: [
                                FractionallySizedBox(
                                  widthFactor: 0.5,
                                  child: Card(
                                    elevation: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            booking.fullName,
                                            style:
                                                theme.textTheme.headlineMedium,
                                          ),
                                          Text(
                                            booking.email,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InfoLabel(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        booking.startsAt
                                                            .hoursAndMinutes,
                                                      ),
                                                      const Text("-"),
                                                      Text(
                                                        booking.endsAt
                                                            .hoursAndMinutes,
                                                      ),
                                                    ],
                                                  ),
                                                  label: 'Time'),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: VerticalDivider(
                                                  width: 25,
                                                ),
                                              ),
                                              InfoLabel(
                                                  child: Text(booking
                                                      .status.name
                                                      .toUpperCase()),
                                                  label: 'Status'),
                                            ],
                                          ),
                                          TextButton(
                                              child: const Text("Send message"),
                                              onPressed: () {})
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.5,
                                  child: Card(
                                    elevation: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GridView.count(
                                        shrinkWrap: true,
                                        crossAxisCount: 3,
                                        childAspectRatio: 6 / 2,
                                        children: [
                                          InfoLabel(
                                            labelWidget: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'RID',
                                                  style: labelStyle,
                                                ),
                                                const SizedBox(
                                                  width: 2,
                                                ),
                                                JustTheTooltip(
                                                  preferredDirection:
                                                      AxisDirection.up,
                                                  content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: BarcodeWidget(
                                                      width: 100,
                                                      data: booking.rid,
                                                      barcode:
                                                          Barcode.code128(),
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                      onTap: BarcodeService(
                                                              booking.rid)
                                                          .printBarcode,
                                                      child: const Icon(
                                                        Icons.print,
                                                        size: 16,
                                                      )),
                                                )
                                              ],
                                            ),
                                            label: 'RID',
                                            child: Text(booking.rid),
                                          ),
                                          FutureBuilder<DocumentSnapshot>(
                                              future: booking.serviceRef.get(
                                                  const GetOptions(
                                                      source: Source
                                                          .serverAndCache)),
                                              builder: (context, snapshot) {
                                                if (snapshot.hasData) {
                                                  final service =
                                                      Service.fromSnapshot(
                                                          snapshot.data!);
                                                  return InfoLabel(
                                                    labelStyle: labelStyle,
                                                    label: 'Test type',
                                                    child: Text(service.title
                                                        .toUpperCase()),
                                                  );
                                                }
                                                return Container();
                                              }),
                                          InfoLabel(
                                            label: 'Test time',
                                            child: Text(booking
                                                .startsAt.hoursAndMinutes),
                                          ),
                                          InfoLabel(
                                            label: 'Date of birth',
                                            child: AutoSizeTextField(
                                              fullwidth: false,
                                              decoration: inputDecoration,
                                              controller: TextEditingController(
                                                text: booking
                                                    .socialSecurityNumber,
                                              ),
                                              onChanged: (value) =>
                                                  cubit.updateBooking(
                                                booking.copyWith(
                                                  socialSecurityNumber: value,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InfoLabel(
                                            label: 'Passport number',
                                            child: AutoSizeTextField(
                                              fullwidth: false,
                                              decoration: inputDecoration,
                                              controller: TextEditingController(
                                                text: booking.passportNumber,
                                              ),
                                              onChanged: (value) =>
                                                  cubit.updateBooking(
                                                booking.copyWith(
                                                  passportNumber: value,
                                                ),
                                              ),
                                            ),
                                          ),

                                          /*    TextBox(
                                              iconButtonThemeData: ButtonThemeData.all(
                                                  ButtonStyle(
                                                      backgroundColor:
                                                          ButtonState.all(Colors.red),
                                                      border:
                                                          ButtonState.all(BorderSide.none))),
                                              headerStyle: labelStyle,
                                              header: 'Date of birth',
                                              controller: TextEditingController(
                                                  text: booking.socialSecurityNumber),
                                              enabled: !editMode,
                                            ), */
                                          InfoLabel(
                                            labelStyle: labelStyle,
                                            label: 'Phone number',
                                            child: Text(booking.phoneNumber),
                                          ),
                                          InfoLabel(
                                            labelStyle: labelStyle,
                                            label: 'Phone number',
                                            child: Text(booking.phoneNumber),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.5,
                              child: Card(
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AutoSizeTextField(
                                    minWidth: 300,
                                    fullwidth: false,
                                    minLines: 5,
                                    maxLines: 8,
                                    decoration: inputDecoration.copyWith(
                                        contentPadding: const EdgeInsets.all(8),
                                        filled: true,
                                        fillColor:
                                            theme.scaffoldBackgroundColor,
                                        border: InputBorder.none,
                                        suffix: TextButton(
                                          child: const Text("Save"),
                                          onPressed: cubit.addNote,
                                        )),
                                    enabled: true,
                                    controller: cubit.notesController,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FixedTimeline.tileBuilder(
                                  mainAxisSize: MainAxisSize.min,
                                  builder:
                                      TimelineTileBuilder.connectedFromStyle(
                                    nodePositionBuilder: (context, index) => 0,
                                    contentsAlign: ContentsAlign.basic,
                                    contentsBuilder: (context, index) {
                                      final event = booking.events[index];
                                      return Card(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: InfoLabel(
                                                labelStyle: labelStyle,
                                                label: 'Created at',
                                                child: Text(
                                                  event.createdAt.timeago(),
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                            ),
                                            const VerticalDivider(
                                              width: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: InfoLabel(
                                                labelStyle: labelStyle,
                                                label: 'Info',
                                                child: Text(
                                                  event.type.name,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                            ),
                                            const VerticalDivider(
                                              width: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: InfoLabel(
                                                labelStyle: labelStyle,
                                                label: 'Created by',
                                                child: FutureBuilder<
                                                        DocumentSnapshot<User>>(
                                                    future: event.creator
                                                        .withConverter<User>(
                                                            fromFirestore: (snapshot,
                                                                    options) =>
                                                                User.fromJson(
                                                                    snapshot
                                                                        .data()!),
                                                            toFirestore: (user,
                                                                    options) =>
                                                                user.toJson())
                                                        .get(),
                                                    builder:
                                                        (context, snapshot) {
                                                      if (snapshot.hasData) {
                                                        return Text(
                                                          "${snapshot.data?.data()?.firstName} ${snapshot.data?.data()?.lastName}",
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        );
                                                      }
                                                      return Container();
                                                    }),
                                              ),
                                            ),
                                            Tooltip(
                                              message: event.notes,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: const [
                                                    Icon(Icons.notes),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text("Notes")
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    connectorStyleBuilder: (context, index) =>
                                        ConnectorStyle.solidLine,
                                    indicatorStyleBuilder: (context, index) =>
                                        IndicatorStyle.outlined,
                                    itemCount: booking.events.length,
                                  ),
                                ),
                              ),
                            ),
                            const Card(
                              elevation: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

class InfoLabel extends StatelessWidget {
  final Widget? labelWidget;
  final String label;
  final Widget child;
  final TextStyle? labelStyle;
  const InfoLabel(
      {Key? key,
      required this.label,
      required this.child,
      this.labelStyle,
      this.labelWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultStyle = theme.textTheme.bodyMedium
        ?.copyWith(color: theme.textTheme.bodyMedium?.color?.withOpacity(0.6));

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      labelWidget ??
          Text(
            label,
            style: labelStyle ?? defaultStyle,
          ),
      child,
    ]);
  }
}
