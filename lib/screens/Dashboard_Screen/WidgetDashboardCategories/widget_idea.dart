import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetIdea extends StatefulWidget {
  const WidgetIdea({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetIdea> createState() => _WidgetIdeaState();
}

class _WidgetIdeaState extends State<WidgetIdea> {
  final _categoriesList = ["Industri", "Bisnis", "Pendidikan"];
  String? _selectedValue = "Industri";
  final heightDesk = 100.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String dropdown;

    String dropdownvalue = "Categories";
    var items = [
      "Categories",
      "Teknologi",
      "Bisnis",
      "Industri",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(18),
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Image.asset("assets/images/book.png", width: 70,)
                   ],
                 ),

                  Row(
                    children: [
                      Text("Idea", style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 40),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Input Ide kamu pada form di bawah", style: GoogleFonts.nunito(fontSize: 20),)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nama Penginput',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder()),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nama Ide',
                            prefixIcon: Icon(Icons.laptop_mac),
                            border: OutlineInputBorder()),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    value: _selectedValue,
                    items: _categoriesList.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedValue = val as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    dropdownColor: Colors.blue,
                    decoration: InputDecoration(
                      labelText: "Categories",
                      prefixIcon: Icon(Icons.category),
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Budget',
                            prefixIcon: Icon(Icons.money_off_csred_outlined),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: heightDesk,
                        child:TextFormField(
                            maxLines: heightDesk ~/ 20,
                          decoration: InputDecoration(
                              labelText: 'Deskripsi Ide',
                              prefixIcon: Icon(Icons.money_off_csred_outlined),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OutlinedButton(
                        onPressed: () {

                        },
                        child: const Text('Submit Idea'),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
