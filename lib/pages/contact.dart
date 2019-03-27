import 'package:flutter/material.dart';
import 'package:kea_blr/main.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            floating: false,
            pinned: true,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(

              title: Text("Contact Us",style: TextStyle(color: Colors.yellow,fontSize: 30.0,fontWeight: FontWeight.w900,fontFamily: 'Roboto',),),
              background: Image(image: AssetImage('images/banner.jpg'),),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(child: Icon(Icons.message,size: 35,color: Colors.white,),maxRadius: 35,),Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Text("keab.info@gmail.com",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(child: Icon(Icons.phone,size: 35,color: Colors.white,),maxRadius: 35,),Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Text("+91-9886057734\n+91 9880844233\n+91 9845147346",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(child: Icon(Icons.monetization_on,size: 35,color: Colors.white,),maxRadius: 35,),Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Text("Bank Details \n"
                          "Account No: 11040100310930\n"
                          "Name: Kerala Engineers Association\n"
                          "Branch: St Marks Road, Federal Bank\n"
                          "IFSC Code: FDRL0001104",
                        style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Your Name"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Your Email"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Subject"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Message"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  child: Text("Submit Now"),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 7.0,
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> MyHomePage())
                    );
                  },

                ),
              )



            ]),
          ),

        ],
      ),
    );
  }
}
