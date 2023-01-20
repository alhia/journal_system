import 'package:bookings_repository/bookings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:journal_system/app/router/app_router.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Text(
            "Våra kliniker",
            style: theme.textTheme.headline1,
          ),
          Center(
            child: Text(
              "Välj en plats",
              style: theme.textTheme.headline1,
            ),
          ),
          SizedBox(
            height: 400,
            child: FirestoreListView<Clinic>(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              query: Clinic.ref.orderBy('name'),
              itemBuilder: (context, doc) {
                final clinic = doc.data();
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.apartment,
                          size: 200,
                        ),
                        Text(clinic.name, style: theme.textTheme.headline2),
                        Text(clinic.address, style: theme.textTheme.bodyText1),
                        Text("${clinic.zip} ${clinic.city}",
                            style: theme.textTheme.bodyText1),
                        TextButton(
                          child: const Text("Boka nu"),
                          onPressed: () => BookingFormRoute(
                            id: clinic.id!,
                          ).show(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
