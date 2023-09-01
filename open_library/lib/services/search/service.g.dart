// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchServiceHash() => r'4e5b9dca6a2f97e5bac2603f3cc9fede22a13c95';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SearchServiceRef = AutoDisposeFutureProviderRef<List<Book>>;

/// See also [searchService].
@ProviderFor(searchService)
const searchServiceProvider = SearchServiceFamily();

/// See also [searchService].
class SearchServiceFamily extends Family<AsyncValue<List<Book>>> {
  /// See also [searchService].
  const SearchServiceFamily();

  /// See also [searchService].
  SearchServiceProvider call(
    String query,
  ) {
    return SearchServiceProvider(
      query,
    );
  }

  @override
  SearchServiceProvider getProviderOverride(
    covariant SearchServiceProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchServiceProvider';
}

/// See also [searchService].
class SearchServiceProvider extends AutoDisposeFutureProvider<List<Book>> {
  /// See also [searchService].
  SearchServiceProvider(
    this.query,
  ) : super.internal(
          (ref) => searchService(
            ref,
            query,
          ),
          from: searchServiceProvider,
          name: r'searchServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchServiceHash,
          dependencies: SearchServiceFamily._dependencies,
          allTransitiveDependencies:
              SearchServiceFamily._allTransitiveDependencies,
        );

  final String query;

  @override
  bool operator ==(Object other) {
    return other is SearchServiceProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
