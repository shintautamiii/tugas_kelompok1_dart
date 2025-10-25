import '../lib/select_query.dart';

void main() {
  final query = SelectQuery();
  query.from('users');
  query.where('id', '=', 1);

  print('SQL Query Builder – Week 1: Polymorphism & Abstraction');
  print('=====================================================');
  print('Generated SQL: ${query.build()}');
}
