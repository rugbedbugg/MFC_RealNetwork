.class public final Lorg/fdroid/database/RepositoryDaoInt_Impl;
.super Ljava/lang/Object;
.source "RepositoryDaoInt_Impl.java"

# interfaces
.implements Lorg/fdroid/database/RepositoryDaoInt;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAntiFeature:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCategory:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCoreRepository:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfMirror:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfReleaseChannel:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfRepositoryPreferences:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllCoreRepositories:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAllRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAntiFeature:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAntiFeatures:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteCategories:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteCategory:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteCoreRepository:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteMirrors:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteReleaseChannel:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteReleaseChannels:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetETags:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetPreferredRepoInAppPrefs:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetTimestamps:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetRepositoryEnabledInternal:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetWeight:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfShiftRepoWeights:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateDisabledMirrors:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUserMirrors:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUsernameAndPassword:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfCoreRepository:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfRepositoryPreferences:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KDf3XueckiHBIVAYXkveTDEyG24(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->lambda$__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences$4(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QnoeMMAws-elTmjXN6rr8hjrGX8(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->lambda$__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature$1(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R6QCQ6PrI4WU8f33ROyybIm3Kpw(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->lambda$__fetchRelationshipCategoryAsorgFdroidDatabaseCategory$2(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fxSkirbfCRQ6eoNgEyFPdjTpa28(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->lambda$__fetchRelationshipMirrorAsorgFdroidDatabaseMirror$0(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tlqhJFcqVvmzbK1kae_I5VhVCqA(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->lambda$__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel$3(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__IndexFormatVersion_enumToString(Lorg/fdroid/database/RepositoryDaoInt_Impl;Lorg/fdroid/index/IndexFormatVersion;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__IndexFormatVersion_enumToString(Lorg/fdroid/index/IndexFormatVersion;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__IndexFormatVersion_stringToEnum(Lorg/fdroid/database/RepositoryDaoInt_Impl;Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__IndexFormatVersion_stringToEnum(Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 102
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$1;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfRepositoryPreferences:Landroidx/room/EntityInsertionAdapter;

    .line 150
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$2;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfCoreRepository:Landroidx/room/EntityInsertionAdapter;

    .line 212
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$3;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$3;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfMirror:Landroidx/room/EntityInsertionAdapter;

    .line 235
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$4;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$4;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfAntiFeature:Landroidx/room/EntityInsertionAdapter;

    .line 271
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$5;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$5;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfCategory:Landroidx/room/EntityInsertionAdapter;

    .line 307
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$6;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$6;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfReleaseChannel:Landroidx/room/EntityInsertionAdapter;

    .line 343
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$7;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$7;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__updateAdapterOfCoreRepository:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 406
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$8;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$8;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__updateAdapterOfRepositoryPreferences:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 455
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$9;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$9;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUserMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 464
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$10;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$10;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUsernameAndPassword:Landroidx/room/SharedSQLiteStatement;

    .line 473
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$11;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$11;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateDisabledMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 482
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$12;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$12;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetRepositoryEnabledInternal:Landroidx/room/SharedSQLiteStatement;

    .line 490
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$13;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$13;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetPreferredRepoInAppPrefs:Landroidx/room/SharedSQLiteStatement;

    .line 498
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$14;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$14;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetWeight:Landroidx/room/SharedSQLiteStatement;

    .line 506
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$15;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$15;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfShiftRepoWeights:Landroidx/room/SharedSQLiteStatement;

    .line 515
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$16;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$16;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCoreRepository:Landroidx/room/SharedSQLiteStatement;

    .line 523
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$17;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$17;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 531
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$18;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$18;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllCoreRepositories:Landroidx/room/SharedSQLiteStatement;

    .line 539
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$19;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$19;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 547
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$20;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$20;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 555
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$21;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$21;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeatures:Landroidx/room/SharedSQLiteStatement;

    .line 563
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$22;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$22;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeature:Landroidx/room/SharedSQLiteStatement;

    .line 571
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$23;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$23;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    .line 579
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$24;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$24;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategory:Landroidx/room/SharedSQLiteStatement;

    .line 587
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$25;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$25;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannels:Landroidx/room/SharedSQLiteStatement;

    .line 595
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$26;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$26;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannel:Landroidx/room/SharedSQLiteStatement;

    .line 603
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$27;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$27;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetTimestamps:Landroidx/room/SharedSQLiteStatement;

    .line 611
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$28;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$28;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetETags:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __IndexFormatVersion_enumToString(Lorg/fdroid/index/IndexFormatVersion;)Ljava/lang/String;
    .locals 3

    .line 2235
    sget-object v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$31;->$SwitchMap$org$fdroid$index$IndexFormatVersion:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "TWO"

    return-object p1

    .line 2238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert enum to string, unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "ONE"

    return-object p1
.end method

.method private __IndexFormatVersion_stringToEnum(Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;
    .locals 3

    .line 2662
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "ONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TWO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2664
    sget-object p1, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    return-object p1

    .line 2665
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2663
    :cond_1
    sget-object p1, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    return-object p1
.end method

.method private __fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2308
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2311
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    .line 2312
    new-instance v2, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;)V

    invoke-static {v0, v4, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 2318
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `repoId`,`id`,`icon`,`name`,`description` FROM `AntiFeature` WHERE `repoId` IN ("

    .line 2319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 2321
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 2322
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2325
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    .line 2327
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 2328
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 2329
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    .line 2332
    invoke-static {v5, v2, v3, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v5, "repoId"

    .line 2334
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 2386
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 2343
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2345
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2346
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 2350
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2352
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v11, v6

    goto :goto_2

    .line 2355
    :cond_4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_2
    const/4 v8, 0x2

    .line 2359
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v8, v6

    goto :goto_3

    .line 2362
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2364
    :goto_3
    sget-object v12, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const/4 v8, 0x3

    .line 2367
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v8, v6

    goto :goto_4

    .line 2370
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2372
    :goto_4
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    const/4 v8, 0x4

    .line 2375
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v8, v6

    goto :goto_5

    .line 2378
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2380
    :goto_5
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 2381
    new-instance v12, Lorg/fdroid/database/AntiFeature;

    move-object v8, v12

    move-object v3, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lorg/fdroid/database/AntiFeature;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 2382
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x0

    goto :goto_1

    .line 2386
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2387
    throw v0
.end method

.method private __fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2392
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2395
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    .line 2396
    new-instance v2, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;)V

    invoke-static {v0, v4, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 2402
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `repoId`,`id`,`icon`,`name`,`description` FROM `Category` WHERE `repoId` IN ("

    .line 2403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 2405
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 2406
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2409
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    .line 2411
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 2412
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 2413
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    .line 2416
    invoke-static {v5, v2, v3, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v5, "repoId"

    .line 2418
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 2470
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 2427
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2429
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2430
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 2434
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2436
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v11, v6

    goto :goto_2

    .line 2439
    :cond_4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_2
    const/4 v8, 0x2

    .line 2443
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v8, v6

    goto :goto_3

    .line 2446
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2448
    :goto_3
    sget-object v12, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const/4 v8, 0x3

    .line 2451
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v8, v6

    goto :goto_4

    .line 2454
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2456
    :goto_4
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    const/4 v8, 0x4

    .line 2459
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v8, v6

    goto :goto_5

    .line 2462
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2464
    :goto_5
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 2465
    new-instance v12, Lorg/fdroid/database/Category;

    move-object v8, v12

    move-object v3, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lorg/fdroid/database/Category;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 2466
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x0

    goto :goto_1

    .line 2470
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2471
    throw v0
.end method

.method private __fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    .line 2244
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2247
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 2248
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;)V

    invoke-static {p1, v2, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 2254
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT `repoId`,`url`,`location` FROM `Mirror` WHERE `repoId` IN ("

    .line 2255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 2257
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 2258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2261
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    move v4, v2

    .line 2263
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 2264
    invoke-virtual {p1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 2265
    invoke-virtual {v0, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    .line 2268
    invoke-static {v3, v0, v1, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v3, "repoId"

    .line 2270
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 2302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 2277
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2279
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2280
    invoke-virtual {p1, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2284
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2286
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v4

    goto :goto_2

    .line 2289
    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    const/4 v9, 0x2

    .line 2292
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v9, v4

    goto :goto_3

    .line 2295
    :cond_5
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2297
    :goto_3
    new-instance v10, Lorg/fdroid/database/Mirror;

    invoke-direct {v10, v6, v7, v8, v9}, Lorg/fdroid/database/Mirror;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2302
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2303
    throw p1
.end method

.method private __fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2476
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2479
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    .line 2480
    new-instance v2, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;)V

    invoke-static {v0, v4, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 2486
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `repoId`,`id`,`icon`,`name`,`description` FROM `ReleaseChannel` WHERE `repoId` IN ("

    .line 2487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 2489
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 2490
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2493
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    .line 2495
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 2496
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 2497
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    .line 2500
    invoke-static {v5, v2, v3, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v5, "repoId"

    .line 2502
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 2554
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 2511
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2513
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2514
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 2518
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2520
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v11, v6

    goto :goto_2

    .line 2523
    :cond_4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_2
    const/4 v8, 0x2

    .line 2527
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v8, v6

    goto :goto_3

    .line 2530
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2532
    :goto_3
    sget-object v12, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const/4 v8, 0x3

    .line 2535
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v8, v6

    goto :goto_4

    .line 2538
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2540
    :goto_4
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    const/4 v8, 0x4

    .line 2543
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v8, v6

    goto :goto_5

    .line 2546
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2548
    :goto_5
    invoke-virtual {v12, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 2549
    new-instance v12, Lorg/fdroid/database/ReleaseChannel;

    move-object v8, v12

    move-object v3, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lorg/fdroid/database/ReleaseChannel;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 2550
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x0

    goto :goto_1

    .line 2554
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2555
    throw v0
.end method

.method private __fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2560
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2563
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 2564
    new-instance v2, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/fdroid/database/RepositoryDaoInt_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;)V

    invoke-static {v0, v4, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchLongSparseArray(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 2570
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `repoId`,`weight`,`enabled`,`lastUpdated`,`lastETag`,`userMirrors`,`disabledMirrors`,`username`,`password` FROM `RepositoryPreferences` WHERE `repoId` IN ("

    .line 2571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 2573
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 2574
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2577
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    move v6, v3

    move v5, v4

    .line 2579
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 2580
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 2581
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    .line 2584
    invoke-static {v5, v2, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v5, "repoId"

    .line 2586
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 2657
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 2599
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2601
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2602
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2605
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2607
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v9, 0x2

    .line 2610
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_4

    move v14, v3

    goto :goto_2

    :cond_4
    move v14, v4

    :goto_2
    const/4 v9, 0x3

    .line 2613
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v15, v6

    goto :goto_3

    .line 2616
    :cond_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v15, v9

    :goto_3
    const/4 v9, 0x4

    .line 2619
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v16, v6

    goto :goto_4

    .line 2622
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    :goto_4
    const/4 v9, 0x5

    .line 2626
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v9, v6

    goto :goto_5

    .line 2629
    :cond_7
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2631
    :goto_5
    sget-object v10, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v10, v9}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    const/4 v9, 0x6

    .line 2634
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object v9, v6

    goto :goto_6

    .line 2637
    :cond_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2639
    :goto_6
    invoke-virtual {v10, v9}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    const/4 v9, 0x7

    .line 2641
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v19, v6

    goto :goto_7

    .line 2644
    :cond_9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    :goto_7
    const/16 v9, 0x8

    .line 2647
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v20, v6

    goto :goto_8

    .line 2650
    :cond_a
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v9

    .line 2652
    :goto_8
    new-instance v9, Lorg/fdroid/database/RepositoryPreferences;

    move-object v10, v9

    invoke-direct/range {v10 .. v20}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 2657
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2658
    throw v0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 2231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature$1(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 2313
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V

    .line 2314
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipCategoryAsorgFdroidDatabaseCategory$2(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 2397
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V

    .line 2398
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipMirrorAsorgFdroidDatabaseMirror$0(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 2249
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V

    .line 2250
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel$3(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 2481
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V

    .line 2482
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences$4(Landroidx/collection/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 2565
    invoke-direct {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V

    .line 2566
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public clear(J)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 854
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 856
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->clear(Lorg/fdroid/database/RepositoryDaoInt;J)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 857
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 859
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 860
    throw p1
.end method

.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 782
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 784
    :try_start_0
    invoke-static {p0}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->clearAll(Lorg/fdroid/database/RepositoryDaoInt;)V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 785
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 787
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 788
    throw v0
.end method

.method public countAntiFeatures()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM AntiFeature"

    const/4 v1, 0x0

    .line 2172
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2173
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 2174
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 2177
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2178
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2184
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2185
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2184
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2185
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2186
    throw v1
.end method

.method public countCategories()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM Category"

    const/4 v1, 0x0

    .line 2192
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2193
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 2194
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 2197
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2198
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2204
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2205
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2204
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2205
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2206
    throw v1
.end method

.method public countMirrors()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM Mirror"

    const/4 v1, 0x0

    .line 2152
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2153
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 2154
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 2157
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2158
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2164
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2165
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2164
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2165
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2166
    throw v1
.end method

.method public countReleaseChannels()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM ReleaseChannel"

    const/4 v1, 0x0

    .line 2212
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2213
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 2214
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 2217
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2218
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2224
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2225
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2224
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2225
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2226
    throw v1
.end method

.method public deleteAllCoreRepositories()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1072
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllCoreRepositories:Landroidx/room/SharedSQLiteStatement;

    .line 1073
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1075
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1078
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1080
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllCoreRepositories:Landroidx/room/SharedSQLiteStatement;

    .line 1083
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1080
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1081
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllCoreRepositories:Landroidx/room/SharedSQLiteStatement;

    .line 1083
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1084
    throw v1
.end method

.method public deleteAllRepositoryPreferences()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1089
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1090
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1092
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1095
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1097
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1100
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1097
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1098
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAllRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1100
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1101
    throw v1
.end method

.method public deleteAntiFeature(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1144
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeature:Landroidx/room/SharedSQLiteStatement;

    .line 1145
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1147
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 1150
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 1152
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1155
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1158
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1160
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeature:Landroidx/room/SharedSQLiteStatement;

    .line 1163
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1160
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1161
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeature:Landroidx/room/SharedSQLiteStatement;

    .line 1163
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1164
    throw p1
.end method

.method public deleteAntiFeatures(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1125
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeatures:Landroidx/room/SharedSQLiteStatement;

    .line 1126
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1128
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1130
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1133
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1135
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeatures:Landroidx/room/SharedSQLiteStatement;

    .line 1138
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1135
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1136
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteAntiFeatures:Landroidx/room/SharedSQLiteStatement;

    .line 1138
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1139
    throw p1
.end method

.method public deleteCategories(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1169
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    .line 1170
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1172
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1174
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1177
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1179
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    .line 1182
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1179
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1180
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    .line 1182
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1183
    throw p1
.end method

.method public deleteCategory(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1188
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategory:Landroidx/room/SharedSQLiteStatement;

    .line 1189
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1191
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 1194
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 1196
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1199
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1202
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1204
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategory:Landroidx/room/SharedSQLiteStatement;

    .line 1207
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1204
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1205
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCategory:Landroidx/room/SharedSQLiteStatement;

    .line 1207
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1208
    throw p1
.end method

.method public deleteCoreRepository(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1034
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCoreRepository:Landroidx/room/SharedSQLiteStatement;

    .line 1035
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1037
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1039
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1042
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1044
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCoreRepository:Landroidx/room/SharedSQLiteStatement;

    .line 1047
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1044
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1045
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteCoreRepository:Landroidx/room/SharedSQLiteStatement;

    .line 1047
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1048
    throw p1
.end method

.method public deleteMirrors(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1106
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 1107
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1109
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1111
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1114
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1116
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 1119
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1116
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1117
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 1119
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1120
    throw p1
.end method

.method public deleteReleaseChannel(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1232
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannel:Landroidx/room/SharedSQLiteStatement;

    .line 1233
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1235
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 1238
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 1240
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1243
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1246
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1248
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannel:Landroidx/room/SharedSQLiteStatement;

    .line 1251
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1248
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1249
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannel:Landroidx/room/SharedSQLiteStatement;

    .line 1251
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1252
    throw p1
.end method

.method public deleteReleaseChannels(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1213
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannels:Landroidx/room/SharedSQLiteStatement;

    .line 1214
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1216
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1218
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1221
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1223
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannels:Landroidx/room/SharedSQLiteStatement;

    .line 1226
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1223
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1224
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteReleaseChannels:Landroidx/room/SharedSQLiteStatement;

    .line 1226
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1227
    throw p1
.end method

.method public deleteRepository(J)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 771
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 773
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->deleteRepository(Lorg/fdroid/database/RepositoryDaoInt;J)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 774
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 776
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 777
    throw p1
.end method

.method public deleteRepositoryPreferences(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1053
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1054
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1056
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1058
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1061
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1063
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1066
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1063
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1064
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfDeleteRepositoryPreferences:Landroidx/room/SharedSQLiteStatement;

    .line 1066
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1067
    throw p1
.end method

.method public getArchiveRepoId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT repoId FROM CoreRepository\n        WHERE certificate = ? AND address LIKE \'%/archive\' COLLATE NOCASE"

    const/4 v1, 0x1

    .line 2122
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2125
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2127
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2129
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2130
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 2133
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2134
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2137
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2144
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2145
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    .line 2144
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2145
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2146
    throw v1
.end method

.method public getLiveCategories()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT `repoId`, `id`, `icon`, `name`, `description` FROM (SELECT * FROM Category\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 GROUP BY id HAVING MAX(pref.weight))"

    const/4 v1, 0x0

    .line 1955
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1956
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "Category"

    const-string v4, "RepositoryPreferences"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;

    invoke-direct {v4, p0, v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRepositories()Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT `repoId`, `name`, `icon`, `address`, `webBaseUrl`, `timestamp`, `version`, `formatVersion`, `maxAge`, `description`, `certificate` FROM (SELECT * FROM CoreRepository\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        ORDER BY pref.weight DESC)"

    const/4 v1, 0x0

    .line 1783
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1784
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    const-string v2, "Mirror"

    const-string v3, "AntiFeature"

    const-string v4, "Category"

    const-string v5, "ReleaseChannel"

    const-string v6, "RepositoryPreferences"

    const-string v7, "CoreRepository"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;-><init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getMinRepositoryWeight()I
    .locals 4

    const-string v0, "SELECT COALESCE(MIN(weight), 2147483647) FROM RepositoryPreferences"

    const/4 v1, 0x0

    .line 2022
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2023
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 2024
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 2027
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2028
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2034
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2035
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2034
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2035
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2036
    throw v1
.end method

.method public getRepositories()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `repoId`, `name`, `icon`, `address`, `webBaseUrl`, `timestamp`, `version`, `formatVersion`, `maxAge`, `description`, `certificate` FROM (SELECT * FROM CoreRepository\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        ORDER BY pref.weight DESC)"

    const/4 v2, 0x0

    .line 1622
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1623
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1624
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1626
    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1639
    :try_start_1
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1640
    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1641
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1642
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1643
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1644
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1646
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1647
    invoke-virtual {v0, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1648
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 1651
    :cond_0
    :goto_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1652
    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1653
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1656
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1657
    invoke-virtual {v8, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1658
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1661
    :cond_2
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1662
    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1663
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1666
    :cond_3
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1667
    invoke-virtual {v10, v11, v12, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v11, -0x1

    .line 1669
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1670
    invoke-direct {v1, v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V

    .line 1671
    invoke-direct {v1, v7}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V

    .line 1672
    invoke-direct {v1, v8}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V

    .line 1673
    invoke-direct {v1, v9}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V

    .line 1674
    invoke-direct {v1, v10}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V

    .line 1675
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1676
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1680
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1683
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v5

    goto :goto_3

    .line 1686
    :cond_5
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1688
    :goto_3
    sget-object v13, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v13, v12}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    const/4 v12, 0x2

    .line 1691
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object v12, v5

    goto :goto_4

    .line 1694
    :cond_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1696
    :goto_4
    invoke-virtual {v13, v12}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    const/4 v12, 0x3

    .line 1698
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v5

    goto :goto_5

    .line 1701
    :cond_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    :goto_5
    const/4 v12, 0x4

    .line 1704
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v19, v5

    goto :goto_6

    .line 1707
    :cond_8
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v12

    :goto_6
    const/4 v12, 0x5

    .line 1710
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v12, 0x6

    .line 1712
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v5

    goto :goto_7

    .line 1715
    :cond_9
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v22, v12

    :goto_7
    const/4 v12, 0x7

    .line 1718
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v23, v5

    goto :goto_8

    .line 1721
    :cond_a
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__IndexFormatVersion_stringToEnum(Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v12

    move-object/from16 v23, v12

    :goto_8
    const/16 v12, 0x8

    .line 1724
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v24, v5

    goto :goto_9

    .line 1727
    :cond_b
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v24, v12

    :goto_9
    const/16 v12, 0x9

    .line 1731
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_c

    move-object v12, v5

    goto :goto_a

    .line 1734
    :cond_c
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1736
    :goto_a
    invoke-virtual {v13, v12}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v25

    const/16 v12, 0xa

    .line 1738
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v26, v5

    goto :goto_b

    .line 1741
    :cond_d
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v26, v12

    .line 1743
    :goto_b
    new-instance v28, Lorg/fdroid/database/CoreRepository;

    move-object/from16 v13, v28

    invoke-direct/range {v13 .. v26}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    .line 1746
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1747
    invoke-virtual {v0, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v29, v12

    check-cast v29, Ljava/util/ArrayList;

    .line 1750
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1751
    invoke-virtual {v7, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v30, v12

    check-cast v30, Ljava/util/ArrayList;

    .line 1754
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1755
    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v31, v12

    check-cast v31, Ljava/util/ArrayList;

    .line 1758
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1759
    invoke-virtual {v9, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v32, v12

    check-cast v32, Ljava/util/ArrayList;

    .line 1762
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1763
    invoke-virtual {v10, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v33, v12

    check-cast v33, Lorg/fdroid/database/RepositoryPreferences;

    .line 1764
    new-instance v12, Lorg/fdroid/database/Repository;

    move-object/from16 v27, v12

    invoke-direct/range {v27 .. v33}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    .line 1765
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1767
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1771
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1774
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v11

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 1770
    :goto_c
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1771
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1772
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_d
    iget-object v2, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1774
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1775
    throw v0
.end method

.method public getRepository(J)Lorg/fdroid/database/Repository;
    .locals 35

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM CoreRepository WHERE repoId = ?"

    const/4 v2, 0x1

    .line 1292
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 1294
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1295
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1296
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    .line 1298
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "repoId"

    .line 1300
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "name"

    .line 1301
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon"

    .line 1302
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 1303
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "webBaseUrl"

    .line 1304
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp"

    .line 1305
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "version"

    .line 1306
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "formatVersion"

    .line 1307
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "maxAge"

    .line 1308
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "description"

    .line 1309
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "certificate"

    .line 1310
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1311
    new-instance v15, Landroidx/collection/LongSparseArray;

    invoke-direct {v15}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1312
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v3

    .line 1313
    :try_start_2
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 p2, v14

    .line 1314
    new-instance v14, Landroidx/collection/LongSparseArray;

    invoke-direct {v14}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v17, v13

    .line 1315
    new-instance v13, Landroidx/collection/LongSparseArray;

    invoke-direct {v13}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1316
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v11

    move/from16 v19, v12

    .line 1318
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1319
    invoke-virtual {v15, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v20

    if-nez v20, :cond_0

    move/from16 v20, v10

    .line 1320
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    move/from16 v20, v10

    .line 1323
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1324
    invoke-virtual {v4, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1328
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1329
    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1330
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1333
    :cond_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1334
    invoke-virtual {v14, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1335
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1338
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x0

    .line 1339
    invoke-virtual {v13, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v10, v20

    goto :goto_0

    :cond_4
    move/from16 v20, v10

    move/from16 v18, v11

    move/from16 v19, v12

    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 1341
    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1342
    invoke-direct {v1, v15}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V

    .line 1343
    invoke-direct {v1, v4}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V

    .line 1344
    invoke-direct {v1, v3}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V

    .line 1345
    invoke-direct {v1, v14}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V

    .line 1346
    invoke-direct {v1, v13}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V

    .line 1348
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1351
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1354
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v5, v12

    goto :goto_2

    .line 1357
    :cond_5
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1359
    :goto_2
    sget-object v10, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v24

    .line 1362
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v12

    goto :goto_3

    .line 1365
    :cond_6
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1367
    :goto_3
    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v25

    .line 1369
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v26, v12

    goto :goto_4

    .line 1372
    :cond_7
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    .line 1375
    :goto_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v27, v12

    goto :goto_5

    .line 1378
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v5

    .line 1381
    :goto_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move/from16 v5, v20

    .line 1383
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v30, v12

    :goto_6
    move/from16 v5, v18

    goto :goto_7

    .line 1386
    :cond_9
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v30, v5

    goto :goto_6

    .line 1389
    :goto_7
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v31, v12

    :goto_8
    move/from16 v5, v19

    goto :goto_9

    .line 1392
    :cond_a
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__IndexFormatVersion_stringToEnum(Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v5

    move-object/from16 v31, v5

    goto :goto_8

    .line 1395
    :goto_9
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v32, v12

    :goto_a
    move/from16 v5, v17

    goto :goto_b

    .line 1398
    :cond_b
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v32, v5

    goto :goto_a

    .line 1402
    :goto_b
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v5, v12

    goto :goto_c

    .line 1405
    :cond_c
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1407
    :goto_c
    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v33

    move/from16 v5, p2

    .line 1409
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v34, v12

    goto :goto_d

    .line 1412
    :cond_d
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v5

    .line 1414
    :goto_d
    new-instance v6, Lorg/fdroid/database/CoreRepository;

    move-object/from16 v21, v6

    invoke-direct/range {v21 .. v34}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    .line 1417
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1418
    invoke-virtual {v15, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 1421
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1422
    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    .line 1425
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1426
    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/util/ArrayList;

    .line 1429
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1430
    invoke-virtual {v14, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/util/ArrayList;

    .line 1433
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1434
    invoke-virtual {v13, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/fdroid/database/RepositoryPreferences;

    .line 1435
    new-instance v4, Lorg/fdroid/database/Repository;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    goto :goto_e

    :cond_e
    move-object v4, v12

    :goto_e
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1439
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1442
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1443
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1446
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 1442
    :goto_f
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1443
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1444
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_10
    iget-object v2, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1446
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1447
    throw v0
.end method

.method public getRepository(Ljava/lang/String;)Lorg/fdroid/database/Repository;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM CoreRepository\n        WHERE certificate = ? AND address NOT LIKE \"%/archive\" COLLATE NOCASE\n        LIMIT 1"

    const/4 v3, 0x1

    .line 1455
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 1458
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1462
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1463
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    .line 1465
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "repoId"

    .line 1467
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "name"

    .line 1468
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon"

    .line 1469
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 1470
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "webBaseUrl"

    .line 1471
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp"

    .line 1472
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "version"

    .line 1473
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "formatVersion"

    .line 1474
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "maxAge"

    .line 1475
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "description"

    .line 1476
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "certificate"

    .line 1477
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1478
    new-instance v15, Landroidx/collection/LongSparseArray;

    invoke-direct {v15}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1479
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v2

    .line 1480
    :try_start_2
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v17, v14

    .line 1481
    new-instance v14, Landroidx/collection/LongSparseArray;

    invoke-direct {v14}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v18, v13

    .line 1482
    new-instance v13, Landroidx/collection/LongSparseArray;

    invoke-direct {v13}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1483
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v11

    move/from16 v20, v12

    .line 1485
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1486
    invoke-virtual {v15, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v21

    if-nez v21, :cond_1

    move/from16 v21, v10

    .line 1487
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v11, v12, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    move/from16 v21, v10

    .line 1490
    :goto_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1491
    invoke-virtual {v4, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1492
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1495
    :cond_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1496
    invoke-virtual {v2, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1497
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1500
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1501
    invoke-virtual {v14, v10, v11}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1502
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1505
    :cond_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x0

    .line 1506
    invoke-virtual {v13, v10, v11, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v10, v21

    goto :goto_1

    :cond_5
    move/from16 v21, v10

    move/from16 v19, v11

    move/from16 v20, v12

    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 1508
    invoke-interface {v3, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1509
    invoke-direct {v1, v15}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Landroidx/collection/LongSparseArray;)V

    .line 1510
    invoke-direct {v1, v4}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Landroidx/collection/LongSparseArray;)V

    .line 1511
    invoke-direct {v1, v2}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Landroidx/collection/LongSparseArray;)V

    .line 1512
    invoke-direct {v1, v14}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Landroidx/collection/LongSparseArray;)V

    .line 1513
    invoke-direct {v1, v13}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Landroidx/collection/LongSparseArray;)V

    .line 1515
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1518
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1521
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v5, v12

    goto :goto_3

    .line 1524
    :cond_6
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1526
    :goto_3
    sget-object v10, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v25

    .line 1529
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v12

    goto :goto_4

    .line 1532
    :cond_7
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1534
    :goto_4
    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v26

    .line 1536
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v27, v12

    goto :goto_5

    .line 1539
    :cond_8
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v5

    .line 1542
    :goto_5
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v28, v12

    goto :goto_6

    .line 1545
    :cond_9
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    .line 1548
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move/from16 v5, v21

    .line 1550
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v31, v12

    :goto_7
    move/from16 v5, v19

    goto :goto_8

    .line 1553
    :cond_a
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v31, v5

    goto :goto_7

    .line 1556
    :goto_8
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v32, v12

    :goto_9
    move/from16 v5, v20

    goto :goto_a

    .line 1559
    :cond_b
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__IndexFormatVersion_stringToEnum(Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v5

    move-object/from16 v32, v5

    goto :goto_9

    .line 1562
    :goto_a
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v33, v12

    :goto_b
    move/from16 v5, v18

    goto :goto_c

    .line 1565
    :cond_c
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v33, v5

    goto :goto_b

    .line 1569
    :goto_c
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v5, v12

    goto :goto_d

    .line 1572
    :cond_d
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1574
    :goto_d
    invoke-virtual {v10, v5}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v34

    move/from16 v5, v17

    .line 1576
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v35, v12

    goto :goto_e

    .line 1579
    :cond_e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v5

    .line 1581
    :goto_e
    new-instance v6, Lorg/fdroid/database/CoreRepository;

    move-object/from16 v22, v6

    invoke-direct/range {v22 .. v35}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    .line 1584
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1585
    invoke-virtual {v15, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 1588
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1589
    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    .line 1592
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1593
    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    .line 1596
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1597
    invoke-virtual {v14, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    .line 1600
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1601
    invoke-virtual {v13, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/fdroid/database/RepositoryPreferences;

    .line 1602
    new-instance v4, Lorg/fdroid/database/Repository;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    goto :goto_f

    :cond_f
    move-object v4, v12

    :goto_f
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1606
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1609
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1610
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1613
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .line 1609
    :goto_10
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1610
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1611
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_11
    iget-object v2, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1613
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1614
    throw v0
.end method

.method public getRepositoryPreferences(J)Lorg/fdroid/database/RepositoryPreferences;
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM RepositoryPreferences WHERE repoId = ?"

    const/4 v2, 0x1

    .line 2042
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2044
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2045
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2046
    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "repoId"

    .line 2048
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "weight"

    .line 2049
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "enabled"

    .line 2050
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastUpdated"

    .line 2051
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "lastETag"

    .line 2052
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "userMirrors"

    .line 2053
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "disabledMirrors"

    .line 2054
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "username"

    .line 2055
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "password"

    .line 2056
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 2058
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2060
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2062
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2065
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v20, v2

    goto :goto_0

    :cond_0
    move/from16 v20, v4

    .line 2068
    :goto_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v21, v5

    goto :goto_1

    .line 2071
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v21, v0

    .line 2074
    :goto_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v22, v5

    goto :goto_2

    .line 2077
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 2081
    :goto_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_3

    .line 2084
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2086
    :goto_3
    sget-object v2, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v2, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 2089
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v5

    goto :goto_4

    .line 2092
    :cond_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2094
    :goto_4
    invoke-virtual {v2, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 2096
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v25, v5

    goto :goto_5

    .line 2099
    :cond_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 2102
    :goto_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    move-object/from16 v26, v5

    goto :goto_7

    .line 2105
    :cond_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 2107
    :goto_7
    new-instance v5, Lorg/fdroid/database/RepositoryPreferences;

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v26}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 2113
    :cond_7
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2114
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    .line 2113
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2114
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2115
    throw v0
.end method

.method public insert(Lorg/fdroid/database/InitialRepository;)J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 734
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 737
    :try_start_0
    invoke-static {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/InitialRepository;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 738
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 741
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 742
    throw p1
.end method

.method public insert(Lorg/fdroid/database/NewRepository;)J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 747
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 750
    :try_start_0
    invoke-static {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/NewRepository;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 751
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 754
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 755
    throw p1
.end method

.method public insert(Lorg/fdroid/database/RepositoryPreferences;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 623
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 624
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfRepositoryPreferences:Landroidx/room/EntityInsertionAdapter;

    .line 626
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 627
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 629
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 630
    throw p1
.end method

.method public insertAntiFeatures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 660
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 661
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfAntiFeature:Landroidx/room/EntityInsertionAdapter;

    .line 663
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 664
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 666
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 667
    throw p1
.end method

.method public insertCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 672
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 673
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfCategory:Landroidx/room/EntityInsertionAdapter;

    .line 675
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 676
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 678
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 679
    throw p1
.end method

.method public insertEmptyRepo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 819
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 822
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insertEmptyRepo(Lorg/fdroid/database/RepositoryDaoInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 823
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 826
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 827
    throw p1
.end method

.method public insertMirrors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Mirror;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 648
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 649
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfMirror:Landroidx/room/EntityInsertionAdapter;

    .line 651
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 652
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 654
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 655
    throw p1
.end method

.method public insertOrReplace(Lorg/fdroid/database/CoreRepository;)J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 635
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 636
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfCoreRepository:Landroidx/room/EntityInsertionAdapter;

    .line 638
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 639
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 642
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 643
    throw p1
.end method

.method public insertOrReplace(Lorg/fdroid/index/v2/RepoV2;J)J
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 793
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 796
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insertOrReplace(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/index/v2/RepoV2;J)J

    move-result-wide p1

    iget-object p3, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 797
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 800
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 801
    throw p1
.end method

.method public insertReleaseChannels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 684
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 685
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__insertionAdapterOfReleaseChannel:Landroidx/room/EntityInsertionAdapter;

    .line 687
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 688
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 690
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 691
    throw p1
.end method

.method public reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 843
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 845
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->reorderRepositories(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 846
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 848
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 849
    throw p1
.end method

.method public resetETags()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1274
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetETags:Landroidx/room/SharedSQLiteStatement;

    .line 1275
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1277
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1280
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1282
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetETags:Landroidx/room/SharedSQLiteStatement;

    .line 1285
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1282
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1283
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetETags:Landroidx/room/SharedSQLiteStatement;

    .line 1285
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1286
    throw v1
.end method

.method public resetPreferredRepoInAppPrefs(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 971
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetPreferredRepoInAppPrefs:Landroidx/room/SharedSQLiteStatement;

    .line 972
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 974
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 976
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 979
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 981
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetPreferredRepoInAppPrefs:Landroidx/room/SharedSQLiteStatement;

    .line 984
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 981
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 982
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetPreferredRepoInAppPrefs:Landroidx/room/SharedSQLiteStatement;

    .line 984
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 985
    throw p1
.end method

.method public resetTimestamps()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1257
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetTimestamps:Landroidx/room/SharedSQLiteStatement;

    .line 1258
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1260
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1263
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1265
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetTimestamps:Landroidx/room/SharedSQLiteStatement;

    .line 1268
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1265
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1266
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfResetTimestamps:Landroidx/room/SharedSQLiteStatement;

    .line 1268
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1269
    throw v1
.end method

.method public setRepositoryEnabled(JZ)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 760
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 762
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->setRepositoryEnabled(Lorg/fdroid/database/RepositoryDaoInt;JZ)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 763
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 765
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 766
    throw p1
.end method

.method public setRepositoryEnabledInternal(JZ)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 949
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetRepositoryEnabledInternal:Landroidx/room/SharedSQLiteStatement;

    .line 950
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 953
    invoke-interface {v0, p3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 955
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 957
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 960
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 962
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetRepositoryEnabledInternal:Landroidx/room/SharedSQLiteStatement;

    .line 965
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 962
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 963
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetRepositoryEnabledInternal:Landroidx/room/SharedSQLiteStatement;

    .line 965
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 966
    throw p1
.end method

.method public setWeight(JI)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 990
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetWeight:Landroidx/room/SharedSQLiteStatement;

    .line 991
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p3

    .line 993
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 995
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 997
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1000
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1002
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetWeight:Landroidx/room/SharedSQLiteStatement;

    .line 1005
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1002
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1003
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfSetWeight:Landroidx/room/SharedSQLiteStatement;

    .line 1005
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1006
    throw p1
.end method

.method public shiftRepoWeights(III)V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1011
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfShiftRepoWeights:Landroidx/room/SharedSQLiteStatement;

    .line 1012
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p3

    .line 1014
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x2

    int-to-long v1, p1

    .line 1016
    invoke-interface {v0, p3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x3

    int-to-long p2, p2

    .line 1018
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1020
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1023
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1025
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfShiftRepoWeights:Landroidx/room/SharedSQLiteStatement;

    .line 1028
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1025
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1026
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfShiftRepoWeights:Landroidx/room/SharedSQLiteStatement;

    .line 1028
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 1029
    throw p1
.end method

.method public update(JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 807
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 809
    :try_start_0
    invoke-static/range {p0 .. p6}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->update(Lorg/fdroid/database/RepositoryDaoInt;JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 810
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 812
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 813
    throw p1
.end method

.method public update(Lorg/fdroid/database/CoreRepository;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 696
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 697
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__updateAdapterOfCoreRepository:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 699
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 700
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 702
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 703
    throw p1
.end method

.method public updateDisabledMirrors(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 923
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateDisabledMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 924
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 926
    sget-object v1, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v1, p3}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 928
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 930
    :cond_0
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    .line 933
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 935
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 938
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 940
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateDisabledMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 943
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 940
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 941
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateDisabledMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 943
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 944
    throw p1
.end method

.method public updateRepository(Lorg/fdroid/database/CoreRepository;)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 708
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 710
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__updateAdapterOfCoreRepository:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 712
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 713
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 716
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 717
    throw p1
.end method

.method public updateRepository(JJLkotlinx/serialization/json/JsonObject;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 832
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 834
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->updateRepository(Lorg/fdroid/database/RepositoryDaoInt;JJLkotlinx/serialization/json/JsonObject;)V

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 835
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 837
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 838
    throw p1
.end method

.method public updateRepositoryPreferences(Lorg/fdroid/database/RepositoryPreferences;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 722
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 723
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__updateAdapterOfRepositoryPreferences:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 725
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 726
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 728
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 729
    throw p1
.end method

.method public updateUserMirrors(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 865
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUserMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 866
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 868
    sget-object v1, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v1, p3}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 870
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    .line 875
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 877
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 880
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 882
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUserMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 885
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 882
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 883
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUserMirrors:Landroidx/room/SharedSQLiteStatement;

    .line 885
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 886
    throw p1
.end method

.method public updateUsernameAndPassword(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 892
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUsernameAndPassword:Landroidx/room/SharedSQLiteStatement;

    .line 893
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 896
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 898
    :cond_0
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    if-nez p4, :cond_1

    .line 902
    invoke-interface {v0, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 904
    :cond_1
    invoke-interface {v0, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p3, 0x3

    .line 907
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 909
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 912
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 914
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUsernameAndPassword:Landroidx/room/SharedSQLiteStatement;

    .line 917
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 914
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 915
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl;->__preparedStmtOfUpdateUsernameAndPassword:Landroidx/room/SharedSQLiteStatement;

    .line 917
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 918
    throw p1
.end method
