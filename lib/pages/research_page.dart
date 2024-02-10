import 'package:flutter/material.dart';

class ResearchPaperSearch extends StatefulWidget {
  @override
  _ResearchPaperSearchState createState() => _ResearchPaperSearchState();
}

class _ResearchPaperSearchState extends State<ResearchPaperSearch> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];

  void _searchPapers(String query) {
    // Simulate search results
    List<String> results = [
      "Paper 1",
      "Paper 2",
      "Paper 3",
      "Paper 4",
      "Paper 5",
    ];

    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Research Papers'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _searchPapers(_searchController.text);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    _searchResults[index],
                    style: TextStyle(fontSize: 16.0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
