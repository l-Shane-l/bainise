import 'package:flutter/material.dart';

class TransportationPage extends StatefulWidget {
  const TransportationPage({Key? key}) : super(key: key);

  @override
  _TransportationPageState createState() => _TransportationPageState();
}

class _TransportationPageState extends State<TransportationPage> {
  List<Ticket> _morningTickets = [
    Ticket('8:00 AM', 'Dublin City Centre', '€10'),
    Ticket('9:00 AM', 'Dublin Airport', '€12'),
    Ticket('10:00 AM', 'Maynooth', '€8'),
  ];
  List<Ticket> _eveningTickets = [
    Ticket('11:00 PM', 'Navan', '€15'),
    Ticket('12:00 AM', 'Trim', '€12'),
    Ticket('1:00 AM', 'Kells', '€10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transportation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Morning Departures',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            for (var ticket in _morningTickets)
              TicketTile(ticket: ticket),
            const SizedBox(height: 32.0),
            Text(
              'Evening Departures',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            for (var ticket in _eveningTickets)
              TicketTile(ticket: ticket),
          ],
        ),
      ),
    );
  }
}

class Ticket {
  final String departureTime;
  final String location;
  final String price;

  const Ticket(this.departureTime, this.location, this.price);
}

class TicketTile extends StatelessWidget {
  final Ticket ticket;

  const TicketTile({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: () {
          // TODO: Implement booking functionality.
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ticket.departureTime,
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                ticket.location,
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                ticket.price,
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
