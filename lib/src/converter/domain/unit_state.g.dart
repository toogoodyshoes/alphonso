// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_state.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUnitStateCollection on Isar {
  IsarCollection<UnitState> get unitStates => this.collection();
}

const UnitStateSchema = CollectionSchema(
  name: r'UnitState',
  id: 5581264429445913998,
  properties: {
    r'bottomUnit': PropertySchema(
      id: 0,
      name: r'bottomUnit',
      type: IsarType.string,
    ),
    r'bottomValue': PropertySchema(
      id: 1,
      name: r'bottomValue',
      type: IsarType.double,
    ),
    r'topUnit': PropertySchema(
      id: 2,
      name: r'topUnit',
      type: IsarType.string,
    ),
    r'topValue': PropertySchema(
      id: 3,
      name: r'topValue',
      type: IsarType.double,
    ),
    r'unitCategory': PropertySchema(
      id: 4,
      name: r'unitCategory',
      type: IsarType.string,
    )
  },
  estimateSize: _unitStateEstimateSize,
  serialize: _unitStateSerialize,
  deserialize: _unitStateDeserialize,
  deserializeProp: _unitStateDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _unitStateGetId,
  getLinks: _unitStateGetLinks,
  attach: _unitStateAttach,
  version: '3.1.0+1',
);

int _unitStateEstimateSize(
  UnitState object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bottomUnit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.topUnit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.unitCategory;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _unitStateSerialize(
  UnitState object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bottomUnit);
  writer.writeDouble(offsets[1], object.bottomValue);
  writer.writeString(offsets[2], object.topUnit);
  writer.writeDouble(offsets[3], object.topValue);
  writer.writeString(offsets[4], object.unitCategory);
}

UnitState _unitStateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UnitState();
  object.bottomUnit = reader.readStringOrNull(offsets[0]);
  object.bottomValue = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.topUnit = reader.readStringOrNull(offsets[2]);
  object.topValue = reader.readDoubleOrNull(offsets[3]);
  object.unitCategory = reader.readStringOrNull(offsets[4]);
  return object;
}

P _unitStateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _unitStateGetId(UnitState object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _unitStateGetLinks(UnitState object) {
  return [];
}

void _unitStateAttach(IsarCollection<dynamic> col, Id id, UnitState object) {
  object.id = id;
}

extension UnitStateQueryWhereSort
    on QueryBuilder<UnitState, UnitState, QWhere> {
  QueryBuilder<UnitState, UnitState, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UnitStateQueryWhere
    on QueryBuilder<UnitState, UnitState, QWhereClause> {
  QueryBuilder<UnitState, UnitState, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UnitStateQueryFilter
    on QueryBuilder<UnitState, UnitState, QFilterCondition> {
  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bottomUnit',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bottomUnit',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomUnitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bottomUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomUnitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bottomUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bottomUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bottomValue',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bottomValue',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      bottomValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> bottomValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'topUnit',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'topUnit',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      topUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'topValue',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      topValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'topValue',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> topValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unitCategory',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unitCategory',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> unitCategoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> unitCategoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unitCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition> unitCategoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unitCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterFilterCondition>
      unitCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unitCategory',
        value: '',
      ));
    });
  }
}

extension UnitStateQueryObject
    on QueryBuilder<UnitState, UnitState, QFilterCondition> {}

extension UnitStateQueryLinks
    on QueryBuilder<UnitState, UnitState, QFilterCondition> {}

extension UnitStateQuerySortBy on QueryBuilder<UnitState, UnitState, QSortBy> {
  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByBottomUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByBottomUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByBottomValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomValue', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByBottomValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomValue', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByTopUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByTopUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByTopValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topValue', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByTopValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topValue', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByUnitCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitCategory', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> sortByUnitCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitCategory', Sort.desc);
    });
  }
}

extension UnitStateQuerySortThenBy
    on QueryBuilder<UnitState, UnitState, QSortThenBy> {
  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByBottomUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByBottomUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByBottomValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomValue', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByBottomValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bottomValue', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByTopUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByTopUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByTopValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topValue', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByTopValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topValue', Sort.desc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByUnitCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitCategory', Sort.asc);
    });
  }

  QueryBuilder<UnitState, UnitState, QAfterSortBy> thenByUnitCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitCategory', Sort.desc);
    });
  }
}

extension UnitStateQueryWhereDistinct
    on QueryBuilder<UnitState, UnitState, QDistinct> {
  QueryBuilder<UnitState, UnitState, QDistinct> distinctByBottomUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bottomUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitState, UnitState, QDistinct> distinctByBottomValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bottomValue');
    });
  }

  QueryBuilder<UnitState, UnitState, QDistinct> distinctByTopUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitState, UnitState, QDistinct> distinctByTopValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topValue');
    });
  }

  QueryBuilder<UnitState, UnitState, QDistinct> distinctByUnitCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitCategory', caseSensitive: caseSensitive);
    });
  }
}

extension UnitStateQueryProperty
    on QueryBuilder<UnitState, UnitState, QQueryProperty> {
  QueryBuilder<UnitState, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UnitState, String?, QQueryOperations> bottomUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bottomUnit');
    });
  }

  QueryBuilder<UnitState, double?, QQueryOperations> bottomValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bottomValue');
    });
  }

  QueryBuilder<UnitState, String?, QQueryOperations> topUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topUnit');
    });
  }

  QueryBuilder<UnitState, double?, QQueryOperations> topValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topValue');
    });
  }

  QueryBuilder<UnitState, String?, QQueryOperations> unitCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitCategory');
    });
  }
}
