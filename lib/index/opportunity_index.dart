import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:quantbit_crm/app_drawer.dart';
import 'package:quantbit_crm/create/create_opportunity.dart';

class Opportunityindex extends StatefulWidget {
  const Opportunityindex({super.key, required this.title});
  final String title;

  @override
  State<Opportunityindex> createState() => _Opportunityindex();
}

class _Opportunityindex extends State<Opportunityindex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(context),
        appBar: AppBar(
            title: Text(widget.title),
            
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                ),
              ),
            ]),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.arrow_circle_down_rounded,
                  color: Colors.white),
              label: 'Import from Address Book',
              backgroundColor: Colors.blue,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.person_add, color: Colors.white),
              label: 'Add Account',
              backgroundColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Opportunity(
                            title: '',
                          )),
                );
              },
            ),
          ],
        ));
  }
}
