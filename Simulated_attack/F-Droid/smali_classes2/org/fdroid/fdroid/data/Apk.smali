.class public Lorg/fdroid/fdroid/data/Apk;
.super Ljava/lang/Object;
.source "Apk.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/fdroid/fdroid/data/Apk;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/fdroid/fdroid/data/Apk;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELEASE_CHANNEL_BETA:Ljava/lang/String; = "Beta"

.field public static final RELEASE_CHANNEL_STABLE:Ljava/lang/String; = "Stable"

.field public static final SDK_VERSION_MAX_VALUE:I = 0x7f

.field public static final SDK_VERSION_MIN_VALUE:I


# instance fields
.field public added:Ljava/util/Date;

.field antiFeatureReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field antiFeatures:[Ljava/lang/String;

.field public apkFile:Lorg/fdroid/index/v2/FileV1;

.field public canonicalRepoAddress:Ljava/lang/String;

.field public compatible:Z

.field public features:[Ljava/lang/String;

.field public incompatibleReasons:[Ljava/lang/String;

.field private installedFile:Lorg/fdroid/fdroid/data/SanitizedFile;

.field public maxSdkVersion:I

.field public minSdkVersion:I

.field public nativecode:[Ljava/lang/String;

.field private obbMainFile:Ljava/lang/String;

.field public obbMainFileSha256:Ljava/lang/String;

.field private obbPatchFile:Ljava/lang/String;

.field public obbPatchFileSha256:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public releaseChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public repoAddress:Ljava/lang/String;

.field public repoId:J

.field public requestedPermissions:[Ljava/lang/String;

.field public signer:Ljava/lang/String;

.field public size:J

.field private srcname:Ljava/lang/String;

.field public targetSdkVersion:I

.field public versionCode:J

.field public versionName:Ljava/lang/String;

.field whatsNew:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 372
    new-instance v0, Lorg/fdroid/fdroid/data/Apk$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/data/Apk$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/data/Apk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    const/16 v0, 0x7f

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    const/16 v0, 0x7f

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    .line 141
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 143
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 144
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->installedFile:Lorg/fdroid/fdroid/data/SanitizedFile;

    iput-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    const/16 v1, 0x7f

    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/fdroid/fdroid/data/Apk;->size:J

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFileSha256:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFileSha256:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->added:Ljava/util/Date;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->features:[Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/index/v2/FileV1;->deserialize(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV1;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->installedFile:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->srcname:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->canonicalRepoAddress:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatures:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V
    .locals 6

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    iput v0, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    const/16 v1, 0x7f

    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    .line 159
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 160
    invoke-static {p2}, Lorg/fdroid/fdroid/Utils;->getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->canonicalRepoAddress:Ljava/lang/String;

    .line 162
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getAdded()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->added:Ljava/util/Date;

    .line 163
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getFeatureNames()Ljava/util/List;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->features:[Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/data/Apk;->setPackageName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->isCompatible()Z

    move-result p2

    iput-boolean p2, p0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    .line 166
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getManifest()Lorg/fdroid/database/AppManifest;

    move-result-object p2

    .line 167
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getMinSdkVersion()I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    .line 169
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/index/v2/UsesSdkV2;->getTargetSdkVersion()I

    move-result v2

    :goto_1
    iput v2, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 171
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iput v1, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 172
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getReleaseChannels()Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Stable"

    .line 175
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->releaseChannels:Ljava/util/List;

    .line 179
    :goto_3
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    .line 180
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getUsesPermission()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/fdroid/fdroid/data/Apk;->setRequestedPermissions(Ljava/util/List;I)V

    .line 181
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getUsesPermissionSdk23()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Lorg/fdroid/fdroid/data/Apk;->setRequestedPermissions(Ljava/util/List;I)V

    .line 182
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getNativeCode()Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    .line 184
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getManifest()Lorg/fdroid/database/AppManifest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/AppManifest;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_4

    .line 185
    :cond_4
    invoke-virtual {v1}, Lorg/fdroid/index/v2/SignerV2;->getSha256()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_4
    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_5
    iput-wide v3, p0, Lorg/fdroid/fdroid/data/Apk;->size:J

    .line 187
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getSrc()Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getSrc()Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->srcname:Ljava/lang/String;

    .line 188
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 189
    invoke-virtual {p2}, Lorg/fdroid/database/AppManifest;->getVersionCode()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 190
    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getAntiFeatureKeys()Ljava/util/List;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatures:[Ljava/lang/String;

    .line 191
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p2

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    .line 192
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatures:[Ljava/lang/String;

    .line 193
    array-length v2, v1

    :goto_7
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatureReasons:Ljava/util/Map;

    .line 194
    invoke-virtual {p1, v3, p2}, Lorg/fdroid/database/AppVersion;->getAntiFeatureReason(Ljava/lang/String;Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 196
    :cond_7
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fdroid/database/AppVersion;->getWhatsNew(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->whatsNew:Ljava/lang/String;

    return-void

    .line 159
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkRepoAddress()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apk needs to have both Schema.ApkTable.Cols.REPO_ADDRESS and Schema.ApkTable.Cols.NAME set in order to calculate URL [package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", apkName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repoAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 3

    .line 388
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->isSafePackageName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repo index package entry includes unsafe packageName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/Apk;->compareTo(Lorg/fdroid/fdroid/data/Apk;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/fdroid/fdroid/data/Apk;)I
    .locals 4

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 306
    iget-wide v2, p1, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 3

    .line 238
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/Apk;->checkRepoAddress()V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->canonicalRepoAddress:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 3

    .line 244
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/Apk;->checkRepoAddress()V

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledMediaFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 545
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/Apk;->getMediaInstallPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fdroid/fdroid/data/SanitizedFile;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMainObbFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lorg/fdroid/fdroid/data/App;->getObbDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMainObbUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/Apk;->checkRepoAddress()V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaInstallPath(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 496
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 500
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 501
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/"

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 505
    array-length v3, v2

    if-nez v3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 508
    aget-object v2, v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "audio"

    .line 511
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    const-string v3, "image"

    .line 514
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_4

    :cond_4
    const-string v3, "video"

    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    const-string v2, "zip"

    .line 520
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 521
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/fdroid/fdroid/installer/ApkCache;->getApkDownloadPath(Landroid/content/Context;Ljava/lang/String;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 523
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, ".obf"

    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 526
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v2, "META-INF/com/google/android/update-binary"

    .line 528
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 530
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ota"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v2

    :cond_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 521
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :goto_3
    return-object v0

    :cond_8
    const-string p1, "apk"

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_4
    return-object v0

    .line 539
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "APKs should not be handled in the media install path!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPatchObbFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lorg/fdroid/fdroid/data/App;->getObbDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPatchObbUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/data/Apk;->checkRepoAddress()V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isApk()Z
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMediaInstalled(Landroid/content/Context;)Z
    .locals 0

    .line 553
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/data/Apk;->getInstalledMediaFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method public setCompatibility(Lorg/fdroid/fdroid/CompatibilityChecker;)V
    .locals 1

    .line 200
    invoke-virtual {p1, p0}, Lorg/fdroid/fdroid/CompatibilityChecker;->getIncompatibleReasons(Lorg/fdroid/fdroid/data/Apk;)Ljava/util/List;

    move-result-object p1

    .line 201
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    new-array v0, v0, [Ljava/lang/String;

    .line 206
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRequestedPermissions(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;I)V"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 414
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 416
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/PermissionV2;

    .line 418
    invoke-virtual {v1}, Lorg/fdroid/index/v2/PermissionV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 419
    invoke-virtual {v1}, Lorg/fdroid/index/v2/PermissionV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p2, v3, :cond_1

    if-gt v3, v2, :cond_1

    .line 422
    invoke-virtual {v1}, Lorg/fdroid/index/v2/PermissionV2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 425
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p2, :cond_4

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    const/16 v3, 0x1d

    if-lt p2, v3, :cond_8

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 429
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz v5, :cond_5

    .line 430
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v5, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    if-ge v5, v3, :cond_8

    .line 433
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    if-eqz v3, :cond_6

    .line 434
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 437
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 440
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v3, 0x1f

    if-lt p2, v3, :cond_a

    iget v4, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    if-ge v4, v3, :cond_a

    const-string v3, "android.permission.BLUETOOTH"

    .line 448
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    .line 449
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 450
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 451
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "android.permission.BLUETOOTH_ADVERTISE"

    .line 452
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    const/16 v5, 0x21

    if-lt p2, v5, :cond_d

    iget v6, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    if-ge v6, v5, :cond_d

    const-string v5, "android.permission.BODY_SENSORS"

    .line 460
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 461
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 464
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    .line 465
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 p1, 0x22

    if-lt p2, p1, :cond_f

    .line 474
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 475
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 476
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    const-string p1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 478
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 482
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 483
    array-length p2, p1

    if-nez p2, :cond_10

    const/4 p1, 0x0

    :cond_10
    iput-object p1, p0, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 316
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 317
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 318
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->size:J

    .line 319
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lorg/fdroid/fdroid/data/Apk;->minSdkVersion:I

    .line 321
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 322
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/fdroid/fdroid/data/Apk;->maxSdkVersion:I

    .line 323
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFile:Ljava/lang/String;

    .line 324
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->obbMainFileSha256:Ljava/lang/String;

    .line 325
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFile:Ljava/lang/String;

    .line 326
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->obbPatchFileSha256:Ljava/lang/String;

    .line 327
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->added:Ljava/util/Date;

    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    .line 329
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->features:[Ljava/lang/String;

    .line 330
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->nativecode:[Ljava/lang/String;

    .line 331
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->signer:Ljava/lang/String;

    .line 332
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    .line 333
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-eqz p2, :cond_1

    .line 334
    invoke-virtual {p2}, Lorg/fdroid/index/v2/FileV1;->serialize()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->installedFile:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 335
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->srcname:Ljava/lang/String;

    .line 336
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    .line 337
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->canonicalRepoAddress:Ljava/lang/String;

    .line 338
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->incompatibleReasons:[Ljava/lang/String;

    .line 339
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/data/Apk;->antiFeatures:[Ljava/lang/String;

    .line 340
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
