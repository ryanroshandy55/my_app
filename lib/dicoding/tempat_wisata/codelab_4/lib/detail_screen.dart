import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/tourism_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget{
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      }
    );
  }
}

class DetailMobilePage extends StatelessWidget{
  final TourismPlace place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Stack(
              children: <Widget> [
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(159, 60, 56, 56),
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white
                            ), 
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      const FavoriteButton(),
                      ]
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Text(
                place.name, 
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches'
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(195, 227, 222, 222),
              // margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Column(
                      children: <Widget> [
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(
                          place.openDays,
                          style: informationTextStyle,
                        ),
                      ],
                      ),
                    Column(
                      children: <Widget> [
                        const Icon(Icons.access_time),
                        const SizedBox(height: 8.0),
                      Text(
                          place.openTime,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.monetization_on),
                        const SizedBox(height: 8.0),
                      Text(
                          place.ticketPrice,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );     
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() =>  _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color.fromARGB(159, 255, 255, 255),
      child: IconButton(
          icon: Icon(
            isFavorite? Icons.favorite : Icons.favorite_border, color: Colors.red,
            ),
          onPressed: () {
            setState( () {
            isFavorite = !isFavorite;
          });
        },
      )
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final TourismPlace place;

  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wisata Bandung',
            style: TextStyle(
              fontFamily: 'Staatliches',
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              const Text(
                'Wisata Bandung',
                style: TextStyle(
                  fontFamily: 'Staatliches',
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 32,),
              Row(children: [
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(place.imageAsset),
                      ),
                      const SizedBox(height: 16,),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: place.imageUrls.map((url) { 
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(url),
                              ),
                            );
                          }).toList(),
                      ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32,),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            place.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Staatliches',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget> [
                                  const Icon(Icons.calendar_today),
                                  const SizedBox(width: 8.0,),
                                  Text(
                                    place.openDays, 
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              const FavoriteButton(),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(Icons.access_time),
                              const SizedBox(width: 8.0),
                              Text(
                                place.openTime,
                                style: informationTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0,),
                          Row(
                            children: <Widget> [
                              const Icon(Icons.monetization_on),
                              const SizedBox(width: 8.0),
                              Text(
                                place.ticketPrice,
                                style: informationTextStyle,
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              place.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],)
            ],
          ),
        ],
      )
    );
  }
}