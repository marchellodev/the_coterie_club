import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard {
  final String title;
  final String subtitle;
  final String where;
  final String when;
  final String people;
  final String picture;
  final String organizerName;
  final String organizerBio;
  final String organizerPicture;
  final String category;
  final IconData categoryIcon;

  const EventCard({
    this.title,
    this.subtitle,
    this.where,
    this.when,
    this.people,
    this.picture,
    this.organizerName,
    this.organizerBio,
    this.organizerPicture,
    this.category,
    this.categoryIcon,
  });
}

class ExplorePage extends StatelessWidget {
  final List<EventCard> data = [
    EventCard(
        title: 'Fortnite & chit-chat',
        subtitle: 'Looking for a fun squad to play the best game in the world',
        category: 'Games',
        categoryIcon: FeatherIcons.monitor,
        where: 'Online',
        when: 'Every weekends, 10pm - 12pm',
        people: '4',
        picture: 'https://i.ytimg.com/vi/3KgmY5NrEzU/maxresdefault.jpg',
        organizerPicture: 'https://wl-brightside.cf.tsp.li/resize/728x/jpg/e35/4ec/4bb0ae5afebff4afdab1b29f5b.jpg',
        organizerName: 'Alice Smith',
        organizerBio: 'Love books and video games ^_^'),
    EventCard(
        title: 'Football',
        subtitle: 'Gonna play football and drink beer',
        category: 'Sport',
        categoryIcon: FeatherIcons.award,
        where: 'Arsenalna metro, Kyiv',
        when: 'May 26, 6pm - 11pm',
        people: '6-10',
        picture: 'https://open4business.com.ua/wp-content/uploads/2020/10/1594704748_77856.jpg',
        organizerPicture: 'https://secure.i.telegraph.co.uk/multimedia/archive/03249/archetypal-male-fa_3249635c.jpg',
        organizerName: 'Mike Kijelberg',
        organizerBio: 'A big movie fan & amateur photographer'),
    EventCard(
        title: 'The cosmic movie night',
        subtitle: 'Me and a couple of friends are organizing the movie night! We will start with Star Wars and end with Star Trek!',
        category: 'Movies',
        categoryIcon: FeatherIcons.film,
        where: 'Arsenalna metro, Kyiv',
        when: 'May 24, 7pm - 10 am',
        people: '5',
        picture:
            'https://churchleaders-eszuskq0bptlfh8awbb.stackpathdns.com/wp-content/uploads/2018/12/1.4.CHILDREN.CC.FamilyMovieDiscipleship.jpg',
        organizerPicture: 'https://i.pinimg.com/originals/97/e4/2a/97e42a82fc7911961d3ca55f54d1372c.jpg',
        organizerName: 'Mike Kijelberg',
        organizerBio: 'A big movie fan & amateur photographer'),
    EventCard(
        title: 'The tea party !!!',
        subtitle: 'Wanna drink some tasty tea and talk about some philosophical stuff? Join us!',
        category: 'Food',
        categoryIcon: FeatherIcons.smile,
        where: 'Zhytomyrska metro, Kyiv',
        when: 'May 23, 10am - 1pm',
        people: '3-4',
        picture: 'https://www.sandyspringmuseum.org/wp-content/uploads/2019/01/tea-party.jpg',
        organizerPicture: 'https://wl-brightside.cf.tsp.li/resize/728x/jpg/e35/4ec/4bb0ae5afebff4afdab1b29f5b.jpg',
        organizerName: 'Alice Smith',
        organizerBio: 'Love books and video games ^_^'),
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller = CardController(); //Use this to trigger swap.

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: new TinderSwapCard(
              swipeUp: true,
              swipeDown: true,
              orientation: AmassOrientation.BOTTOM,
              totalNum: data.length,
              stackNum: 3,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.86 + 1,
              maxHeight: MediaQuery.of(context).size.width * 0.86 + 1,
              minWidth: MediaQuery.of(context).size.width * 0.86,
              minHeight: MediaQuery.of(context).size.width * 0.86,
              cardBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        data[index].picture,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.8, sigmaY: 2.8),
                        child: new Container(
                          decoration: new BoxDecoration(color: Colors.black.withOpacity(0.4)),
                        ),
                      ),
                    ),
                    // event name
                    Positioned.fill(
                        child: Padding(
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        children: [
                          Text(
                            data[index].title,
                            style: GoogleFonts.montserrat(color: Colors.grey.shade50, fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 4),
                          Text(
                            data[index].subtitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.grey.shade300,
                              fontSize: 13,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Category',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(color: Colors.grey.shade300, fontSize: 14, fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Where',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(color: Colors.grey.shade300, fontSize: 14, fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'When',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(color: Colors.grey.shade300, fontSize: 14, fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'People',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(color: Colors.grey.shade300, fontSize: 14, fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        data[index].categoryIcon,
                                        color: Colors.grey.shade100,
                                        size: 16,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        data[index].category,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade100,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    data[index].where,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    data[index].when,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    data[index].people,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Organizer',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(color: Colors.grey.shade300, fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              if (data[index].organizerPicture == null)
                                CircleAvatar(
                                  child: Icon(
                                    FeatherIcons.user,
                                    size: 18,
                                    color: Colors.grey.shade50,
                                  ),
                                  backgroundColor: Colors.black.withOpacity(0.4),
                                  radius: 22,
                                ),
                              if (data[index].organizerPicture != null)
                                CircleAvatar(
                                  backgroundImage: NetworkImage(data[index].organizerPicture),
                                  // backgroundColor: Colors.black.withOpacity(0.4),
                                  radius: 22,
                                ),
                              SizedBox(
                                width: 6,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].organizerName,
                                    style: GoogleFonts.montserrat(color: Colors.grey.shade100, fontSize: 14),
                                  ),
                                  SizedBox(height: 1),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.86 - 110,
                                    child: Text(
                                      data[index].organizerBio,
                                      style: GoogleFonts.montserrat(color: Colors.grey.shade100, fontSize: 11, fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              cardController: controller,
              swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
                }
              },
              swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                /// Get orientation & index of swiped card!
              },
            ),
          ),
        ),
        SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.triggerLeft();
              },
              icon: Icon(
                FeatherIcons.x,
                color: Colors.red.shade600,
                size: 32,
              ),
            ),
            SizedBox(width: 48),
            IconButton(
              onPressed: () {
                controller.triggerRight();
              },
              icon: Icon(
                FeatherIcons.heart,
                color: Colors.green.shade600,
                size: 32,
              ),
            ),
          ],
        )
      ],
    );
  }
}
