import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types

final GlobalKey<ScaffoldState> _key = GlobalKey();

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer:  Drawer(
         child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color:  Color.fromARGB(255, 1, 133, 69)),
              accountName: Text(
                "User_name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "User_name@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.support,
              ),
              title: const Text('Products'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.verified_user_rounded,
              ),
              title: const Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: appBar(),
      
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchbar(),
          const SizedBox(
            height: 20,
          ),
          const Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
           
          ]),
           const SizedBox(
              height: 30,
            ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(
                        color: const Color.fromARGB(169, 216, 214, 214)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),

                  child: const Column(

                    children: [
                      Icon(
                        Icons.food_bank,
                        size: 40.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        "Food",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                 Container(
                  // margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(
                        color: const Color.fromARGB(169, 216, 214, 214)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),

                  child: const Column(
                    children: [
                      Icon(
                        Icons.free_breakfast,
                        size: 40.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        "Drinks",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                 Container(
                  // margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(
                        color: const Color.fromARGB(169, 216, 214, 214)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),

                  child: const Column(
                    children: [
                      Icon(
                        Icons.grass,
                        size: 40.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        "greens",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,)
          ,
          Container(
            padding: const EdgeInsets.only(bottom: 2),
            margin: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Colors.greenAccent))),
            child: const Text(
              "Today's menu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 30,),

          // products cart
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              // color: Colors.greenAccent,
              border:
                  Border.all(color: const Color.fromARGB(169, 216, 214, 214)),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Image(image: AssetImage('images/spinachi.jpg'),
                fit: BoxFit.cover,
                width: 600,)
               , const Text(
                  "Broccoli",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const Text(
                  "Broccoli contains many vitamins, minerals, fiber, and antioxidants. Broccoli’s benefits include helping reduce inflammation, keeping blood sugar stable, and strengthening the immune system.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 30, 30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ElevatedButton.icon(onPressed: (){}, icon: const Icon(
                  Icons.shopping_basket,
                  size: 30,
                  color: Color.fromARGB(255, 4, 187, 59),

                ), label: const Text("Buy Now",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),)),
              ],
            ),
          ),
          // product 2
          Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                // color: Colors.greenAccent,
                border:
                    Border.all(color: const Color.fromARGB(169, 216, 214, 214)),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage('images/spinachi.jpg'),
                    fit: BoxFit.cover,
                    width: 600,
                  ),
                  const Text(
                    "Broccoli",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const Text(
                    "Broccoli contains many vitamins, minerals, fiber, and antioxidants. Broccoli’s benefits include helping reduce inflammation, keeping blood sugar stable, and strengthening the immune system.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 32, 30, 30),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_basket,
                        size: 30,
                        color: Color.fromARGB(255, 4, 187, 59),
                      ),
                      label: const Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )),
                ],
              ),
            ),
            // product 3
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                // color: Colors.greenAccent,
                border:
                    Border.all(color: const Color.fromARGB(169, 216, 214, 214)),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Image(
                    image: AssetImage('images/spinachi.jpg'),
                    fit: BoxFit.cover,
                    width: 600,
                  ),
                  const Text(
                    "Broccoli",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const Text(
                    "Broccoli contains many vitamins, minerals, fiber, and antioxidants. Broccoli’s benefits include helping reduce inflammation, keeping blood sugar stable, and strengthening the immune system.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 32, 30, 30),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_basket,
                        size: 30,
                        color: Color.fromARGB(255, 4, 187, 59),
                      ),
                      label: const Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )),
                ],
              ),
            ),
        
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        child: const Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 30.0,
        ),
      ),
      backgroundColor: Colors.grey[50],
    );
  }

// Searchbar
  Container searchbar() {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black87.withOpacity(0.3),
          blurRadius: 40,
          spreadRadius: 0.78,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            hintText: 'Search Products..',
            prefixIcon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 30.0,
            ),
            suffixIcon: const Icon(
              Icons.sort,
              color: Colors.black,
              size: 30.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }

// top appbar features.
  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.greenAccent[400],
      elevation: 0.0,
      title: const Center(
        child: Text(
          "Shop-Kart",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      leading: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () => {
             _key.currentState!.openDrawer()

          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                // color: const Color.fromARGB(31, 255, 255, 255),
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        )
      ],
    );
  }
}
