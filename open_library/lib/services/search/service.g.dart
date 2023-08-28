// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$subjectsServiceHash() => r'5fd0e36ed5a8eaa2cb70ecd49b4451a7c483e0e7';

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

abstract class _$SubjectsService
    extends BuildlessAutoDisposeAsyncNotifier<List<Book>> {
  late final String query;

  FutureOr<List<Book>> build(
    String query,
  );
}

/// See also [SubjectsService].
@ProviderFor(SubjectsService)
const subjectsServiceProvider = SubjectsServiceFamily();

/// See also [SubjectsService].
class SubjectsServiceFamily extends Family<AsyncValue<List<Book>>> {
  /// See also [SubjectsService].
  const SubjectsServiceFamily();

  /// See also [SubjectsService].
  SubjectsServiceProvider call(
    String query,
  ) {
    return SubjectsServiceProvider(
      query,
    );
  }

  @override
  SubjectsServiceProvider getProviderOverride(
    covariant SubjectsServiceProvider provider,
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
  String? get name => r'subjectsServiceProvider';
}

/// See also [SubjectsService].
class SubjectsServiceProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SubjectsService, List<Book>> {
  /// See also [SubjectsService].
  SubjectsServiceProvider(
    this.query,
  ) : super.internal(
          () => SubjectsService()..query = query,
          from: subjectsServiceProvider,
          name: r'subjectsServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subjectsServiceHash,
          dependencies: SubjectsServiceFamily._dependencies,
          allTransitiveDependencies:
              SubjectsServiceFamily._allTransitiveDependencies,
        );

  final String query;

  @override
  bool operator ==(Object other) {
    return other is SubjectsServiceProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<Book>> runNotifierBuild(
    covariant SubjectsService notifier,
  ) {
    return notifier.build(
      query,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
