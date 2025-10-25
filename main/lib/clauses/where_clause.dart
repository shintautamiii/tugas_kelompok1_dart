import '../query.dart';

class WhereClause extends Query {
  String column;
  String operator;
  dynamic value;

  WhereClause(this.column, this.operator, this.value);

  @override
  String build() {
    return 'WHERE $column $operator $value';
  }
}
