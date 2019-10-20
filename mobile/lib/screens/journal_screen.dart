import 'package:flutter/material.dart';

import '../models/journal.dart';
import '../widgets/journal_item.dart';
import '../widgets/loading_data.dart';
import '../services/journal.dart';

class JournalScreen extends StatefulWidget {
  @override
  _JournalScreenState createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  bool _isInit = false;
  bool _isLoading = false;
  List<JournalModel> _reports = [];

  @override
  void didChangeDependencies() {
    if (!_isInit) {
      setState(() {
        _isInit = true;
        _isLoading = true;
      });

      JournalService.journal.then((nextList) {
        setState(() {
          _reports = nextList;
          _isLoading = false;
        });
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? LoadingData()
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      'Journal',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: _reports.length,
                        itemBuilder: (ctx, index) =>
                            JournalItem(_reports[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
