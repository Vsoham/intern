import 'package:flutter/material.dart';


class FilteredListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FilteredList Example',
      home: FilteredListScreen(),
    );
  }
}

class FilteredListScreen extends StatefulWidget {
  @override
  _FilteredListScreenState createState() => _FilteredListScreenState();
}

class _FilteredListScreenState extends State<FilteredListScreen> {
  List<String> itemList = [
    'Architecture',
  'Business/MBA',
  'Consultant',
  'data Entry',
  'Digital Marketing',
  'Finance',
  'General Management',
  'Human Resources(HR)'
  ,'Market/Business Research'
  ,'Marketing/Sales',
  'Operation'
  ,'Project Management',
  'Search Engine Optimization(SEO)',
  'Search Engine Marketing',
  'Social Media Marketing','Strategy',
  'Telecalling','Accounts',
  'Chartered Accountant(CA)',
  'Company Secretary','Fashion Designer',
  'Graphic Designer','Merchandise Designer',
  'Aerospace Engineering',
  'Android App Development',
  'Blockchain Development','Chemical Engineering',
  'Electrical Engineering',
  'Game Developer','Information Technology',
  'IOS App Development','Material Science',
  'Mechanical Engineering','Metallurgical Engineering',
  'Mobile App Development',
  'Naval Architecture and Ocean Engineering',
  'Programming','Quality Analyst','Software Testing'
  ,'Hospitality','Culinary Arts','Hotel Management',
  'Travel and Tourism','Media','Anchoring','Animation',
  'Audio Making/Editing','Cinematography','Film Making',
  'Journalism','Motion Graphics',
  'Photography','Public Relations',
  'Proof Reading','Transcription',
  'Video Making/Editing','Videography',
  'Mathematics','Pharmaceutical','Statistics',
  'Fundraising','Social Work','Acting',
  'Agriculture and Food Engineering',
  'Bank','Content Writing','Campus Ambassador',
  'Data Science','Event Management',
  'Game Design','Humanities','Law','Subject Matter Expert'
  ];
  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList = itemList; // Initialize filtered list with all items
  }

  void filterList(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredList = itemList
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredList = itemList; // If query is empty, show all items
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roles for You'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) => filterList(value),
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



