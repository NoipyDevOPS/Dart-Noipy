// # Author : Allan Nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
class SearchQueryChangedAction {
  SearchQueryChangedAction(this.query);
  final String query;
}
//
String searchQueryReducer(String searchQuery, dynamic action) {
  if (action is SearchQueryChangedAction) {
    return action.query;
  }

  return searchQuery;
}
