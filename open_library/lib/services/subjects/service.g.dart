// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$subjectsServiceHash() => r'98b15d61c2b78f976eae4ce7e39c66207a73026c';

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
  late final String category;

  FutureOr<List<Book>> build(
    String category,
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
    String category,
  ) {
    return SubjectsServiceProvider(
      category,
    );
  }

  @override
  SubjectsServiceProvider getProviderOverride(
    covariant SubjectsServiceProvider provider,
  ) {
    return call(
      provider.category,
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
    this.category,
  ) : super.internal(
          () => SubjectsService()..category = category,
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

  final String category;

  @override
  bool operator ==(Object other) {
    return other is SubjectsServiceProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<Book>> runNotifierBuild(
    covariant SubjectsService notifier,
  ) {
    return notifier.build(
      category,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
