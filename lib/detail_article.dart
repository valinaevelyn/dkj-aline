import 'package:flutter/material.dart';
import 'package:flutter_alin/profile.dart';

class DetailArticlePage extends StatelessWidget {
  const DetailArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kembali'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 252,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('image/detail-artikel-1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                // shadow bottom, white
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 258,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(178, 178, 178, 1).withOpacity(0),
                        Color.fromRGBO(178, 178, 178, 1).withOpacity(0.5),
                        Colors.white.withOpacity(1),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                            fontFamily: 'PlusJakarta',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(243, 82, 13, 1))),
                    top: 204,
                    left: 45,
                    right: 45,
                    bottom: 0),
              ]),

              // image

              Padding(
                  padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text('Ditulis oleh ',
                              style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                          const Text('Felix Gustino',
                              style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('27 Mei 2024',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                          const Text('Setiabudi, Jakarta Selatan',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'PlusJakarta',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 10, 45, 45),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Lorem Ipsum',
                            style: TextStyle(
                                fontFamily: 'PlusJakarta',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'PlusJakarta',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                                'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    // image
                    Container(
                      width: 335,
                      height: 165,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('image/detail-artikel-2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    const SizedBox(height: 5),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies dolor vitae sem tristique, suscipit feugiat sem convallis',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlusJakarta',
                            fontWeight: FontWeight.normal,
                            color: Colors.grey)),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('27 Mei 2024',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 6,
                                fontFamily: 'PlusJakarta',
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        const Text('Setiabudi, Jakarta Selatan',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 6,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                      ],
                    ),
                    // line kayak hr tebal

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text('Lorem Ipsum',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'PlusJakarta',
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlusJakarta',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'PlusJakarta',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                        width: 335,
                        child: FilledButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(243, 82, 13, 1)),
                          ),
                          child: const Text('Next'),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
