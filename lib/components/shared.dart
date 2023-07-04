import 'package:flutter/material.dart';

Widget buildAritcleItem(article) => Padding(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: article['urlToImage'] != null
                ? NetworkImage('${article['urlToImage']}')
                : NetworkImage('https://www.lifewire.com/thmb/gIkXBYJvl2kgkLtQWF_4z5AHi7o=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/address-bar-711a771bb4dd4f9a9e4f57cc8a2fc20a.jpg'), // Replace with your default image URL
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 20),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  '${article['title'] ?? 'No Title'}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
              Text('${article['publishedAt'] ?? 'No Date'}')
            ],
          ),
        ),
      ),
    ],
  ),
);
