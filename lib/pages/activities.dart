import 'package:flutter/material.dart';

class activities extends StatelessWidget {
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

              title: Text("Activities",style: TextStyle(color: Colors.yellow,fontSize: 30.0,fontWeight: FontWeight.w900,fontFamily: 'Roboto',),),
              background: Image(image: AssetImage('images/banner.jpg'),),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("In pursuance of the above goals, KEA has been carrying out the following activities:",style: TextStyle(fontFamily: 'Roboto',),),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(">Annual day held in the month of October / November"
                    "\n>Inter- alumni cricket tournament named BBC (Beverage, Biriyani and Cricket)"
                    "\n"
                    "> Tech talks"
                    "\n>To nurture cultural activities of the members and their family"
                    "\n>Visits top laces of scientific and educational interests like museums"
                    "\n>Open tournaments such as Badminton"
                    "\n>Blood donation"
                    "\n>Supporting organizations involved in philanthropic activities such as Sri Ramana Maharshi School for Blind, Reaching Hands etc."
                    "\n>Encouraging Entrepreneurship / Start ups through various fora"
                    "\n>Facilitating employment opportunities for freshers and career enhancement for already employed engineers",
                style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontFamily: 'Roboto',),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("KEA Annual Day",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The first annual get –together of the association was held in November, 1992 fittingly held at the Institution of Engineers, Vidhana Veedhi, Bengaluru. Thereafter, the annual day has been conducted almost every year and this is the Silver Jubilee year of the formation of KEA. Traditionally, the annual meet is a daylong event with Pookkalam (Floral arrangement) competition, painting competition for children, cultural events by members and their family, sumptuous Kerala style lunch followed by a formal function where in, eminent persons from different walks of life address the gathering. The event usually culminates in a musical extravaganza by renowned invited artistes/troupes. The annual day is a much anticipated event in the KEA Calendar. Some of the notable persons who have graced the KEA Annual day are:"),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(">Dr. G. Madhavan Nair, Chairman, ISRO and Secretary-Space, Govt. of India\n"
                    ">Prof. Ramaswamy, the first director of IIMB"
                    "\n>Kris Gopalakrishnan, CEO-Infosys"
                    "\n>Cyriac Joseph, Chief Justice, Karnataka High Court"
                    "\n>Krishna Byregowda, Minister, Karnataka Government"
                    "\n>Santosh Hegde–Judge, Supreme Court"
                    "\n>Dr.K. Radhakrishnan, Chairman, ISRO",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The following reputed artistes/brands have performed during the past Annual meets of KEA:"),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(">P. Jayachandran - Playback singer, Multiple languages\n"
                    ">G.Venugopal - Playback singer, Malayalam"
                    "\n>Jayaraj Varrier - Caricature"
                    "\n>Rimi Tomy - Playback singer, Malayalam"
                    "\n>Kaithapram Damodaran Namboothiri - Poet, Lyricist, Composer, Singer"
                    "\n>Sujatha - Playback singer, Multiple languages"
                    "\n>Sudeep - Playback singer, Malayalam"
                    "\n>Biju Narayanan - Playback singer, Multiple languages"
                    "\n>Nishad - Playback singer, Malayalam"
                    "\n>Anoop Shankar - Playback singer, Multiple languages"
                    "\n>Roopa Revathi, Balamurali, Rajesh Cherthala–Ensemble, Fusion Music"
                    "\n>Avial – Alternative Rock Band"
                    "\n>Thamarassery Churam – Alternative Band",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),
              ),

            ]),
          ),

        ],
      ),
    );
  }
}
