import 'package:flutter/material.dart';
import 'package:studioprojects/pages/details_page.dart';
import 'package:studioprojects/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
-
class _HomePageState extends State<HomePage> {

  String text = "Open Details";

  _callDetailsPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return DetailsPage();
    }));
  }

  _callDetailsPage2(){
    Navigator.of(context).pushReplacementNamed(DetailsPage.id);
  }

  _callDetailsPage3() async{
    String userId = "2002";

    Map result = await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return DetailsPage(userId: userId);
    }));

    print(result);

    setState(() {
      text = result.toString();
    });
  }

  _callDetailsPage4(){
    String userId = "3003";
    Navigator.of(context).pushReplacementNamed(SettingsPage.id, arguments: userId);
  }
  //this function opens details page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            _callDetailsPage4();
          },
          child: Text(text),
        ),
      ),
    );
  }
}
