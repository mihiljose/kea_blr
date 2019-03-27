import 'package:flutter/material.dart';

class news extends StatelessWidget {
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

              title: Text("NEWS",style: TextStyle(color: Colors.yellow,fontSize: 30.0,fontWeight: FontWeight.w900,fontFamily: 'Roboto',),),
              background: Image(image: AssetImage('images/banner.jpg'),),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(18,18,18,0),
                child: Text("OCT 28, 2018,",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto',),),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("KEA Annual Meet 2018",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("This year, the Annual meet is proposed to be held on Sunday, the 28th October 2018 at the NIMHANS Convention Centre from 8.00AM till 6.30PM This year, we will have Dr. Shashi Tharoor, delivering the key note address and Dr. Tessy Thomas (DG- Aero, DRDO) as Chief Guest and followed by a musical program from Anoop Shankar, Jaideep Varier and team."),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("Progremme:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("8.30 - 10.30 am : Pookalam & Painting\n"
                    "10.45 - 11.30 am: Quiz Competitions "
                    "\n11.30 - 12.30 pm Cultural programs by KEA members"
                    "\n12.00 pm - Lunch"
                    "\n1.45 - 3.15pm: Official function & Keynote address"
                    "\n3.15 - 6.15 pm : Musical Program",
                  style: TextStyle(fontWeight: FontWeight.w600),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("Contact:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,0,18,0),
                child: Text("Kindly contact any of the following personnel for assistance: +91 98862 78202, 98808 44233, 98860 57734, 95907 19394"),
              ),
              
              Image.network("http://keablr.org/images/events/Get-Together2018-news.jpg"),

            ]),
          ),

        ],
      ),
    );
  }
}
