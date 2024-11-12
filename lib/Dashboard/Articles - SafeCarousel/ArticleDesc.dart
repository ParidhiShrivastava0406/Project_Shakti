import 'package:flutter/material.dart';
import 'package:shakti/constants.dart'; // Assuming the constants for imageSliders and articles are here.

class ArticleDesc extends StatelessWidget {
  final int index;

  const ArticleDesc({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensuring articles and imageSliders are available (handle case if they're empty or null)
    final imageUrl = imageSliders.isNotEmpty && imageSliders.length > index
        ? imageSliders[index]
        : 'https://via.placeholder.com/150'; // Fallback URL
    final articleTitle = articles.isNotEmpty && articles[0].length > index
        ? articles[0][index]
        : 'Default Article Title'; // Fallback title

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(
              "Daily Life", // This could be dynamic based on index if needed
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              articleTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: Center(
                child: Image.asset("assets/un.png"), // Assuming this asset exists
              ),
            ),
            title: Text("UN WOMEN"),
          ),
          ArticleImage(
              imageStr:
    "https://www.undp.org/sites/g/files/zskgke326/files/2024-07/0m7a2365_1.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(articles.isNotEmpty && articles[0].length > 0 ? articles[0][0] : 'Default article content'),
          ),
          ArticleImage(
              imageStr:
              "https://www.undp.org/sites/g/files/zskgke326/files/2024-07/0m7a2391_2_1.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(articles.isNotEmpty && articles[0].length > 1 ? articles[0][1] : 'More article content'),
          ),
        ],
      ),
    );
  }
}

class ArticleImage extends StatelessWidget {
  final String imageStr;
  const ArticleImage({Key? key, required this.imageStr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3, // Dynamic height
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(imageStr),
              fit: BoxFit.cover,
              onError: (exception, stackTrace) {
                print('Error loading image: $exception');
              },
            ),
          ),
        ),
      ),
    );
  }
}
