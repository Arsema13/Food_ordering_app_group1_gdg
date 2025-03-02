import 'package:flutter/material.dart';
import 'profile.dart'; // Ensure ProfilePage is imported correctly

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2C3DD8), Color(0xFF102A43)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: Offset(0, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      "assets/159187-burger-double-cheese-free-png-hq 2.png",
                      width: 200,
                      height: 200),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(90)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Rating and Price Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF3A45AE),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text(
                            "4.8",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Title and Description
                    Text(
                      "Beef Burger",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Big juicy burger with Cheese, Lettuce, Onions, Tomato, and special sauce!",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    // Add-ons Section
                    Text("Add-ons:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/Rectangle 18.png",
                            width: 70, height: 70, fit: BoxFit.cover),
                        Image.asset("assets/Rectangle 15.jpg",
                            width: 70, height: 70, fit: BoxFit.cover),
                        Image.asset("assets/Rectangle 17.jpg",
                            width: 70, height: 70, fit: BoxFit.cover),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Add to Cart Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C3DDB),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
