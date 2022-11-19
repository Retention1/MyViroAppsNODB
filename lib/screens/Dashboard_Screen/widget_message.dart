import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class WidgetMessage extends StatefulWidget {
  const WidgetMessage({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetMessage> createState() => _WidgetMessageState();
}

class _WidgetMessageState extends State<WidgetMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF4F5),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Slidable(
              startActionPane: ActionPane(
                motion: DrawerMotion(),
                children: [
                  SlidableAction(
                    onPressed: ((context){
                      //Aksi saat button di tekan
                    }),
                    icon: Icons.archive,
                    backgroundColor: Colors.blue,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: ((context){
                      //Aksi saat button di tekan
                    }),
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                    label: 'Delete',
                  )
                ],
              ),
              endActionPane: ActionPane(
                motion: DrawerMotion(),
                children: [
                  SlidableAction(
                    onPressed: ((context){
                      //Aksi saat button di tekan
                    }),
                    icon: Icons.mark_email_read,
                    backgroundColor: Colors.green,
                    label: 'Read',
                  ),
                ],
              ),
              child: Container(
                child: ListTile(
                  title: Text('Laporan Status'),
                  subtitle: Text('Maaf!, Permintaan Ide kamu di tolak...'),
                  leading: Icon(
                    Icons.mark_email_unread,
                    size: 40,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}