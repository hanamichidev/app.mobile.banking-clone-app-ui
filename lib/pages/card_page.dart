import 'package:banking_app/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: black,
            size: 22,
          )),
      title: Text(
        "Card",
        style: TextStyle(fontSize: 18, color: black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: black, size: 25))
      ],
    );
  }

  Widget getBody() {
    final PageController controller = PageController();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 400,
            child: PageView(
              controller: controller,
              children: <Widget>[
                getCards(),
                Center(
                  child: Text('Second Page'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getCards() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "\$",
                style: TextStyle(
                    fontSize: 17, color: black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "18 199.24",
              style: TextStyle(
                  fontSize: 35, color: black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: size.width * 0.85,
          height: 170,
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Feather.credit_card,size: 30,color: white.withOpacity(0.3),),
                    SizedBox(height: 15,),
                    Text("5436 5436 **** 6643",style: TextStyle(
                      color: white.withOpacity(0.8),
                      fontSize: 20,
                      wordSpacing: 15
                    ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("VALID DATE",style: TextStyle(
                      color: white.withOpacity(0.3),
                      fontSize: 12
                    ),),
                    SizedBox(height: 4,),
                     Text("08 / 24",style: TextStyle(
                      color: white,
                      fontSize: 13
                    ),),
                    ],
                   ),
                   Image.asset("assets/images/master_card_logo.png",width: 50,)
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}