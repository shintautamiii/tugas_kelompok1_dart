import 'query.dart';
import 'clauses/where_clause.dart';

class SelectQuery extends Query {
  String? _table;
  WhereClause? _where;

  void from(String table) {
    _table = table;
  }

  void where(String column, String operator, dynamic value) {
    _where = WhereClause(column, operator, value);
  }

  String build() {
    var sql = 'SELECT * FROM $_table';
    if (_where != null) {
      sql += ' ${_where!.build()}';
    }
    return sql;
  }
}
