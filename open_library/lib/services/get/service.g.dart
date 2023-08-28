// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBookServiceHash() => r'9a5960b8751aac6110f49fc958581c0f9e7ce9e2';

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

abstract class _$GetBookService
    extends BuildlessAutoDisposeAsyncNotifier<Book> {
  late final String bookId;

  FutureOr<Book> build(
    String bookId,
  );
}

/// See also [GetBookService].
@ProviderFor(GetBookService)
const getBookServiceProvider = GetBookServiceFamily();

/// See also [GetBookService].
class GetBookServiceFamily extends Family<AsyncValue<Book>> {
  /// See also [GetBookService].
  const GetBookServiceFamily();

  /// See also [GetBookService].
  GetBookServiceProvider call(
    String bookId,
  ) {
    return GetBookServiceProvider(
      bookId,
    );
  }

  @override
  GetBookServiceProvider getProviderOverride(
    covariant GetBookServiceProvider provider,
  ) {
    return call(
      provider.bookId,
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
  String? get name => r'getBookServiceProvider';
}

/// See also [GetBookService].
class GetBookServiceProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetBookService, Book> {
  /// See also [GetBookService].
  GetBookServiceProvider(
    this.bookId,
  ) : super.internal(
          () => GetBookService()..bookId = bookId,
          from: getBookServiceProvider,
          name: r'getBookServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBookServiceHash,
          dependencies: GetBookServiceFamily._dependencies,
          allTransitiveDependencies:
              GetBookServiceFamily._allTransitiveDependencies,
        );

  final String bookId;

  @override
  bool operator ==(Object other) {
    return other is GetBookServiceProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<Book> runNotifierBuild(
    covariant GetBookService notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
