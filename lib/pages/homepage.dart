import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service_booking_app/pages/bookpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Allows content under notch
        statusBarIconBrightness: Brightness.dark, // Icons color
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ye container colors k liye hai gradient color
            Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 225, 232, 235),
                    Color.fromARGB(255, 197, 227, 244),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                ),
              ),
        
              //container k andar jo bhi content hai wo sab yaha likha hai
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //column k ander row for username and profile picture
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, kapil ',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          'images/kapil.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ), //row khatam
        
                  Text(
                    'Which service do \nyou need?',
                    style: TextStyle(
                      color: Color(0xff284a79),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for services',
                        prefixIcon: Icon(Icons.search, color: Color(0xff284a79)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/cleaning.jpg',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Cleaning',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                           Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/carpainter.avif',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'carpenter',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        
                        SizedBox(width: 20),
                           Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/plumber.avif',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Plumber',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                           Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/massage.jpg',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Massage',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                           Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/cook.jpg',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Cooking',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/painting.jpeg',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Painting',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/laundry.png',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Laundry',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'images/repairing.png',
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Repairing',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Popular Services',
                style: TextStyle(
                  color: Color(0xff284a79),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/kapil.jpg',
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Home Cleaning',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'by Kappu ',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 98, 167, 216),
                              ),
                              child: Center(
                                child: Text(
                                  '\$24/Hour',
                                  
                                  style: TextStyle(
                                    
                                    color: Color.fromARGB(255, 232, 238, 247),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                      
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => Bookpage())),
                              child: Container(
                                width: 100,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff284a79),
                                ),
                                child: Center(
                                  child: Text(
                                    'Book Now',
                                    
                                    style: TextStyle(
                                      
                                      color: Color.fromARGB(255, 232, 238, 247),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                                    
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

               SizedBox(height: 20,),
        
        
        


             Container(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/girl2.jpeg',
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '4.6',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Painter',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'by Sofia ',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 98, 167, 216),
                              ),
                              child: Center(
                                child: Text(
                                  '\$29/Hour',
                                  
                                  style: TextStyle(
                                    
                                    color: Color.fromARGB(255, 232, 238, 247),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                       
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => Bookpage())),
                              child: Container(
                                width: 100,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff284a79),
                                ),
                                child: Center(
                                  child: Text(
                                    'Book Now',
                                    
                                    style: TextStyle(
                                      
                                      color: Color.fromARGB(255, 232, 238, 247),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                                     
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                         ),
                         SizedBox(height: 20,),
        
        



             Container(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 227, 244),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/girl.jpeg',
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '4.1',
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Laundry',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'by Diksha ',
                          style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 98, 167, 216),
                              ),
                              child: Center(
                                child: Text(
                                  '\$21/Hour',
                                  
                                  style: TextStyle(
                                    
                                    color: Color.fromARGB(255, 232, 238, 247),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                       
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff284a79),
                              ),
                              child: Center(
                                child: Text(
                                  'Book Now',
                                  
                                  style: TextStyle(
                                    
                                    color: Color.fromARGB(255, 232, 238, 247),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                       
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                         ),SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
