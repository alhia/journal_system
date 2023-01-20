import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_date/src/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:table_calendar/table_calendar.dart';

import '../cubit/booking_form_cubit.dart';

class BookingFormPage extends StatefulWidget {
  const BookingFormPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);
  final String id;

  @override
  State<BookingFormPage> createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<BookingFormCubit>(
      create: (context) => BookingFormCubit()..init(widget.id),
      child: BlocConsumer<BookingFormCubit, BookingFormState>(
        listener: (context, state) {
          final cubit = context.read<BookingFormCubit>();
        },
        builder: (context, state) {
          final cubit = context.read<BookingFormCubit>();
          final today = DateTime.now();
          return Scaffold(
            body: state.mapOrNull(
              loaded: (loadedState) => Stepper(
                onStepTapped: cubit.setStepIndex,
                type: StepperType.horizontal,
                controlsBuilder: (context, details) => Container(),
                //onStepContinue: cubit.nextStep,
                currentStep: loadedState.step,
                steps: [
                  Step(
                      state: loadedState.step > 0
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: loadedState.step == 0,
                      title: const Text('Välj tjänst'),
                      content: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final serviceRef =
                              loadedState.clinic.servicesRef[index];

                          return FutureBuilder<DocumentSnapshot>(
                            future: serviceRef.get(const GetOptions(
                                source: Source.serverAndCache)),
                            builder: (BuildContext context,
                                AsyncSnapshot<DocumentSnapshot> snapshot) {
                              if (snapshot.hasData) {
                                final service =
                                    Service.fromSnapshot(snapshot.data!);

                                return ListTile(
                                  title: Text(service.title),
                                  subtitle: Text(
                                      "${service.minutes} minuter, ${service.price} kr"),
                                  onTap: () => cubit.selectService(service),
                                );
                              }
                              return Container();
                            },
                          );
                        },
                        itemCount: loadedState.clinic.servicesRef.length,
                      )),
                  Step(
                    state: loadedState.step > 1
                        ? StepState.complete
                        : StepState.indexed,
                    isActive: loadedState.step == 1,
                    title: const Text('Välj tid'),
                    content: ListView(
                      shrinkWrap: true,
                      children: [
                        Wrap(
                          children: [
                            FractionallySizedBox(
                              widthFactor: getValueForScreenType<double>(
                                context: context,
                                mobile: 1,
                                tablet: 0.5,
                                desktop: 0.5,
                              ),
                              child: TableCalendar(
                                startingDayOfWeek: StartingDayOfWeek.monday,
                                weekendDays: const [],
                                daysOfWeekStyle: DaysOfWeekStyle(
                                    decoration: BoxDecoration(
                                  color: theme.cardColor,
                                )),
                                calendarStyle: CalendarStyle(
                                    isTodayHighlighted: false,
                                    rowDecoration:
                                        BoxDecoration(color: theme.cardColor)),
                                headerStyle: HeaderStyle(
                                    decoration:
                                        BoxDecoration(color: theme.cardColor),
                                    formatButtonVisible: false,
                                    headerMargin:
                                        const EdgeInsets.only(bottom: 8)),
                                rangeSelectionMode: RangeSelectionMode.disabled,
                                calendarFormat:
                                    getValueForScreenType<CalendarFormat>(
                                  context: context,
                                  mobile: CalendarFormat.week,
                                  tablet: CalendarFormat.month,
                                  desktop: CalendarFormat.month,
                                ),
                                onPageChanged: cubit.onPageChanged,
                                focusedDay: state.maybeMap(
                                    orElse: () => today,
                                    loaded: (loadedState) {
                                      return loadedState.focusedDay;
                                    }),
                                firstDay: DateTime(
                                  today.year,
                                  today.month,
                                  today.day,
                                ),
                                lastDay: DateTime(
                                  today.year,
                                  today.month + 3,
                                  today.day,
                                ),
                                onDaySelected: cubit.onDaySelected,
                                selectedDayPredicate: (date) => state.maybeMap(
                                  orElse: () => false,
                                  loaded: (loadedState) => date.isSameDay(
                                    loadedState.selectedDay,
                                  ),
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: getValueForScreenType<double>(
                                context: context,
                                mobile: 1,
                                tablet: 0.5,
                                desktop: 0.5,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getValueForScreenType<double>(
                                    context: context,
                                    mobile: 0,
                                    tablet: 8,
                                    desktop: 8,
                                  ),
                                ),
                                child: Card(
                                  child: Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: loadedState.availableDates
                                        .map(
                                          (time) => TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    loadedState.selectedTime ==
                                                            time
                                                        ? Colors.pink.shade200
                                                        : Colors.pink.shade100),
                                            child: SizedBox(
                                              child: Text(
                                                time.hoursAndMinutes,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            onPressed: () =>
                                                cubit.selectTime(time),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: FractionallySizedBox(
                            widthFactor: 0.5,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    maximumSize: const Size.fromWidth(200),
                                    backgroundColor: Colors.pink.shade300
                                        .withOpacity(
                                            loadedState.selectedTime != null
                                                ? 1.0
                                                : 0.3)),
                                onPressed: loadedState.selectedTime != null
                                    ? cubit.submitTime
                                    : null,
                                child: const Text(
                                  "Verifiera bokning",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Step(
                    isActive: loadedState.step == 2,
                    title: const Text('Verifiera bokning'),
                    content: Card(
                      child: Form(
                        key: cubit.formKey,
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        autofillHints: const [
                                          AutofillHints.name
                                        ],
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          labelText: 'Förnamn',
                                        ),
                                        controller: cubit.firstNameController,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        autofillHints: const [
                                          AutofillHints.familyName
                                        ],
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          labelText: 'Efternamn',
                                        ),
                                        controller: cubit.lastNameController,
                                      ),
                                    ),
                                  ],
                                ),
                                TextField(
                                  autofillHints: const [AutofillHints.birthday],
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Personnummer',
                                  ),
                                  controller: cubit.socialSecurityController,
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Passnummer',
                                  ),
                                  controller: cubit.passportNoController,
                                ),
                                TextField(
                                  autofillHints: const [AutofillHints.email],
                                  keyboardType: TextInputType.emailAddress,
                                  controller: cubit.emailController,
                                  decoration: const InputDecoration(
                                    labelText: 'Epostadress',
                                  ),
                                ),
                                TextField(
                                  autofillHints: const [AutofillHints.email],
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    labelText: 'Repetera Epostadress',
                                  ),
                                  controller: cubit.emailRepeatController,
                                ),
                                InternationalPhoneNumberInput(
                                    autofillHints: const [
                                      AutofillHints.telephoneNumber
                                    ],
                                    initialValue: PhoneNumber(isoCode: 'SE'),
                                    selectorConfig: const SelectorConfig(),
                                    autoValidateMode: AutovalidateMode.disabled,
                                    textFieldController:
                                        cubit.phoneNumberController,
                                    onInputChanged: (_) {}),
                                AutoSizeTextField(
                                  decoration: const InputDecoration(
                                    labelText: 'Övrigt',
                                  ),
                                  maxLines: 5,
                                  minLines: 5,
                                  controller: cubit.otherInfoController,
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.5,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          maximumSize:
                                              const Size.fromWidth(200),
                                          backgroundColor: Colors.pink.shade300
                                              .withOpacity(
                                                  loadedState.selectedTime !=
                                                          null
                                                      ? 1.0
                                                      : 0.3)),
                                      onPressed: cubit.confirmBooking,
                                      child: const Text(
                                        "Slutför bokning",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

extension on OpenDays {
  Duration get earliest => Duration(
      minutes: toJson()
          .values
          .map((day) => day['start'])
          .map((start) =>
              Duration(hours: start['hour'], minutes: start['minute'])
                  .inMinutes)
          .reduce(max));
  Duration get latest => Duration(
      minutes: toJson()
          .values
          .map((day) => day['end'])
          .map((start) =>
              Duration(hours: start['hour'], minutes: start['minute'])
                  .inMinutes)
          .reduce(min));
}
