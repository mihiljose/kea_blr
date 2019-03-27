import 'package:flutter/material.dart';

class aboutKea extends StatelessWidget {
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

              title: Text("About KEA",style: TextStyle(color: Colors.yellow,fontSize: 30.0,fontWeight: FontWeight.w900,fontFamily: 'Roboto',),),
              background: Image(image: AssetImage('images/banner.jpg'),),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The Association",style: TextStyle(fontSize: 32,),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Kerala Engineers’ Association (KEA), Bengaluru is an alumni confederation bringing together all Engineers in Bengaluru who have graduated from various engineering colleges in Kerala. It is estimated that around 20000 engineers from nearly 120 engineering colleges in Kerala are presently in Bengaluru, making this group a significant part of the upper middle class community in the city. The organization was established in 1992 to achieve the following goals:",style: TextStyle(fontFamily: 'Roboto',),),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(">To facilitate networking amongst the technical community"
                    "\n>  To enhance knowledge and skills and to assist in career growth of members and others"
                    "\n"
                    "> To provide a platform for interaction by the families"
                    "\n>To nurture cultural activities of the members and their family"
                    "\n>To carry out societal activities for the benefit of the underprivileged",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontFamily: 'Roboto',),),
              ),

              Image.network("http://keablr.org/images/about/1.jpg"),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Annual Days",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The Annual Days have been a class act with the likes of TG Ravi, Late Prof. NS Ramaswamy, Justice Cyriac Joseph, Krish Gopalakrishnan and Justice Santosh Hegde gracing the occasions. Renowned artistes like G Venugopal , Jayachandran, Kaithapram, Sujatha Mohan, Biju Narayan, Rimi Tomy and Sudeep performed for the Engineers and their family. There were also foot tapping performances by ‘Avial’ , ‘Thamarassery Churam’ and our own home-grown Techbang (an alumni band from Thrissur Engineering College). The highlights , of course, have been the performances by the children of members, members themselves and the grand sadya."),
              ),



            ]),
          ),

        ],
      ),
    );
  }
}
