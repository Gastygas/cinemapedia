// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FavouriteMoviesTable extends FavouriteMovies
    with TableInfo<$FavouriteMoviesTable, FavouriteMovy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavouriteMoviesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _backdropPathMeta = const VerificationMeta(
    'backdropPath',
  );
  @override
  late final GeneratedColumn<String> backdropPath = GeneratedColumn<String>(
    'backdrop_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalTitleMeta = const VerificationMeta(
    'originalTitle',
  );
  @override
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
    'original_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _posterPathMeta = const VerificationMeta(
    'posterPath',
  );
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
    'poster_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _voteAverageMeta = const VerificationMeta(
    'voteAverage',
  );
  @override
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
    'vote_average',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    movieId,
    backdropPath,
    originalTitle,
    posterPath,
    title,
    voteAverage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favourite_movies';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavouriteMovy> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
        _backdropPathMeta,
        backdropPath.isAcceptableOrUnknown(
          data['backdrop_path']!,
          _backdropPathMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_backdropPathMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
        _originalTitleMeta,
        originalTitle.isAcceptableOrUnknown(
          data['original_title']!,
          _originalTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
        _posterPathMeta,
        posterPath.isAcceptableOrUnknown(data['poster_path']!, _posterPathMeta),
      );
    } else if (isInserting) {
      context.missing(_posterPathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
        _voteAverageMeta,
        voteAverage.isAcceptableOrUnknown(
          data['vote_average']!,
          _voteAverageMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavouriteMovy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavouriteMovy(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      movieId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}movie_id'],
      )!,
      backdropPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}backdrop_path'],
      )!,
      originalTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_title'],
      )!,
      posterPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}poster_path'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      voteAverage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vote_average'],
      )!,
    );
  }

  @override
  $FavouriteMoviesTable createAlias(String alias) {
    return $FavouriteMoviesTable(attachedDatabase, alias);
  }
}

class FavouriteMovy extends DataClass implements Insertable<FavouriteMovy> {
  final int id;
  final int movieId;
  final String backdropPath;
  final String originalTitle;
  final String posterPath;
  final String title;
  final double voteAverage;
  const FavouriteMovy({
    required this.id,
    required this.movieId,
    required this.backdropPath,
    required this.originalTitle,
    required this.posterPath,
    required this.title,
    required this.voteAverage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['backdrop_path'] = Variable<String>(backdropPath);
    map['original_title'] = Variable<String>(originalTitle);
    map['poster_path'] = Variable<String>(posterPath);
    map['title'] = Variable<String>(title);
    map['vote_average'] = Variable<double>(voteAverage);
    return map;
  }

  FavouriteMoviesCompanion toCompanion(bool nullToAbsent) {
    return FavouriteMoviesCompanion(
      id: Value(id),
      movieId: Value(movieId),
      backdropPath: Value(backdropPath),
      originalTitle: Value(originalTitle),
      posterPath: Value(posterPath),
      title: Value(title),
      voteAverage: Value(voteAverage),
    );
  }

  factory FavouriteMovy.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavouriteMovy(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      backdropPath: serializer.fromJson<String>(json['backdropPath']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      title: serializer.fromJson<String>(json['title']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'backdropPath': serializer.toJson<String>(backdropPath),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'posterPath': serializer.toJson<String>(posterPath),
      'title': serializer.toJson<String>(title),
      'voteAverage': serializer.toJson<double>(voteAverage),
    };
  }

  FavouriteMovy copyWith({
    int? id,
    int? movieId,
    String? backdropPath,
    String? originalTitle,
    String? posterPath,
    String? title,
    double? voteAverage,
  }) => FavouriteMovy(
    id: id ?? this.id,
    movieId: movieId ?? this.movieId,
    backdropPath: backdropPath ?? this.backdropPath,
    originalTitle: originalTitle ?? this.originalTitle,
    posterPath: posterPath ?? this.posterPath,
    title: title ?? this.title,
    voteAverage: voteAverage ?? this.voteAverage,
  );
  FavouriteMovy copyWithCompanion(FavouriteMoviesCompanion data) {
    return FavouriteMovy(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      backdropPath: data.backdropPath.present
          ? data.backdropPath.value
          : this.backdropPath,
      originalTitle: data.originalTitle.present
          ? data.originalTitle.value
          : this.originalTitle,
      posterPath: data.posterPath.present
          ? data.posterPath.value
          : this.posterPath,
      title: data.title.present ? data.title.value : this.title,
      voteAverage: data.voteAverage.present
          ? data.voteAverage.value
          : this.voteAverage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavouriteMovy(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('title: $title, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    movieId,
    backdropPath,
    originalTitle,
    posterPath,
    title,
    voteAverage,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavouriteMovy &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.backdropPath == this.backdropPath &&
          other.originalTitle == this.originalTitle &&
          other.posterPath == this.posterPath &&
          other.title == this.title &&
          other.voteAverage == this.voteAverage);
}

class FavouriteMoviesCompanion extends UpdateCompanion<FavouriteMovy> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> backdropPath;
  final Value<String> originalTitle;
  final Value<String> posterPath;
  final Value<String> title;
  final Value<double> voteAverage;
  const FavouriteMoviesCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.title = const Value.absent(),
    this.voteAverage = const Value.absent(),
  });
  FavouriteMoviesCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String backdropPath,
    required String originalTitle,
    required String posterPath,
    required String title,
    this.voteAverage = const Value.absent(),
  }) : movieId = Value(movieId),
       backdropPath = Value(backdropPath),
       originalTitle = Value(originalTitle),
       posterPath = Value(posterPath),
       title = Value(title);
  static Insertable<FavouriteMovy> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? backdropPath,
    Expression<String>? originalTitle,
    Expression<String>? posterPath,
    Expression<String>? title,
    Expression<double>? voteAverage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (originalTitle != null) 'original_title': originalTitle,
      if (posterPath != null) 'poster_path': posterPath,
      if (title != null) 'title': title,
      if (voteAverage != null) 'vote_average': voteAverage,
    });
  }

  FavouriteMoviesCompanion copyWith({
    Value<int>? id,
    Value<int>? movieId,
    Value<String>? backdropPath,
    Value<String>? originalTitle,
    Value<String>? posterPath,
    Value<String>? title,
    Value<double>? voteAverage,
  }) {
    return FavouriteMoviesCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      backdropPath: backdropPath ?? this.backdropPath,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPath: posterPath ?? this.posterPath,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavouriteMoviesCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('posterPath: $posterPath, ')
          ..write('title: $title, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FavouriteMoviesTable favouriteMovies = $FavouriteMoviesTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favouriteMovies];
}

typedef $$FavouriteMoviesTableCreateCompanionBuilder =
    FavouriteMoviesCompanion Function({
      Value<int> id,
      required int movieId,
      required String backdropPath,
      required String originalTitle,
      required String posterPath,
      required String title,
      Value<double> voteAverage,
    });
typedef $$FavouriteMoviesTableUpdateCompanionBuilder =
    FavouriteMoviesCompanion Function({
      Value<int> id,
      Value<int> movieId,
      Value<String> backdropPath,
      Value<String> originalTitle,
      Value<String> posterPath,
      Value<String> title,
      Value<double> voteAverage,
    });

class $$FavouriteMoviesTableFilterComposer
    extends Composer<_$AppDatabase, $FavouriteMoviesTable> {
  $$FavouriteMoviesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavouriteMoviesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavouriteMoviesTable> {
  $$FavouriteMoviesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavouriteMoviesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavouriteMoviesTable> {
  $$FavouriteMoviesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get backdropPath => $composableBuilder(
    column: $table.backdropPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalTitle => $composableBuilder(
    column: $table.originalTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get posterPath => $composableBuilder(
    column: $table.posterPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get voteAverage => $composableBuilder(
    column: $table.voteAverage,
    builder: (column) => column,
  );
}

class $$FavouriteMoviesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavouriteMoviesTable,
          FavouriteMovy,
          $$FavouriteMoviesTableFilterComposer,
          $$FavouriteMoviesTableOrderingComposer,
          $$FavouriteMoviesTableAnnotationComposer,
          $$FavouriteMoviesTableCreateCompanionBuilder,
          $$FavouriteMoviesTableUpdateCompanionBuilder,
          (
            FavouriteMovy,
            BaseReferences<_$AppDatabase, $FavouriteMoviesTable, FavouriteMovy>,
          ),
          FavouriteMovy,
          PrefetchHooks Function()
        > {
  $$FavouriteMoviesTableTableManager(
    _$AppDatabase db,
    $FavouriteMoviesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavouriteMoviesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavouriteMoviesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavouriteMoviesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> backdropPath = const Value.absent(),
                Value<String> originalTitle = const Value.absent(),
                Value<String> posterPath = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<double> voteAverage = const Value.absent(),
              }) => FavouriteMoviesCompanion(
                id: id,
                movieId: movieId,
                backdropPath: backdropPath,
                originalTitle: originalTitle,
                posterPath: posterPath,
                title: title,
                voteAverage: voteAverage,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int movieId,
                required String backdropPath,
                required String originalTitle,
                required String posterPath,
                required String title,
                Value<double> voteAverage = const Value.absent(),
              }) => FavouriteMoviesCompanion.insert(
                id: id,
                movieId: movieId,
                backdropPath: backdropPath,
                originalTitle: originalTitle,
                posterPath: posterPath,
                title: title,
                voteAverage: voteAverage,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavouriteMoviesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavouriteMoviesTable,
      FavouriteMovy,
      $$FavouriteMoviesTableFilterComposer,
      $$FavouriteMoviesTableOrderingComposer,
      $$FavouriteMoviesTableAnnotationComposer,
      $$FavouriteMoviesTableCreateCompanionBuilder,
      $$FavouriteMoviesTableUpdateCompanionBuilder,
      (
        FavouriteMovy,
        BaseReferences<_$AppDatabase, $FavouriteMoviesTable, FavouriteMovy>,
      ),
      FavouriteMovy,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FavouriteMoviesTableTableManager get favouriteMovies =>
      $$FavouriteMoviesTableTableManager(_db, _db.favouriteMovies);
}
