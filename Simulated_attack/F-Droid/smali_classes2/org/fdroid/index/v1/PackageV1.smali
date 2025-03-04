.class public final Lorg/fdroid/index/v1/PackageV1;
.super Ljava/lang/Object;
.source "PackageV1.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v1/PackageV1$$serializer;,
        Lorg/fdroid/index/v1/PackageV1$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u00087\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 h2\u00020\u0001:\u0002ghB\u00fb\u0001\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0001\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0010\u0008\u0001\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0001\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0002\u0010\u001dB\u00eb\u0001\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u0012\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u0012\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010>\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010@\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000f\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u00c6\u0003J\u000f\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u00c6\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\t\u0010E\u001a\u00020\u0007H\u00c6\u0003J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u00c6\u0003J\u0011\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u00c6\u0003J\u0011\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u00c6\u0003J\t\u0010I\u001a\u00020\u0007H\u00c6\u0003J\t\u0010J\u001a\u00020\u0007H\u00c6\u0003J\t\u0010K\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010*J\u0010\u0010M\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010*J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010*J\t\u0010O\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0080\u0002\u0010Q\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u0010RJ\u0013\u0010S\u001a\u00020T2\u0008\u0010U\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010V\u001a\u00020\u0003H\u00d6\u0001JT\u0010W\u001a\u00020X2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00132\"\u0010Z\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070[j\u0002`\\0[2\u001a\u0010]\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010[j\u0004\u0018\u0001`\\J\t\u0010^\u001a\u00020\u0007H\u00d6\u0001J&\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020\u00002\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u00c1\u0001\u00a2\u0006\u0002\u0008fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008\u001f\u0010 R\u0019\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0019\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010#R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010%R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010%R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u0008)\u0010*R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u0008,\u0010*R$\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010.\u001a\u0004\u0008/\u0010#R\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010%R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010%R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010%R\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00085\u0010.\u001a\u0004\u00086\u0010%R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u00087\u0010*R\"\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00088\u0010.\u001a\u0004\u00089\u0010#R\"\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008:\u0010.\u001a\u0004\u0008;\u0010#R\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008<\u0010 R\u0011\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010%\u00a8\u0006i"
    }
    d2 = {
        "Lorg/fdroid/index/v1/PackageV1;",
        "",
        "seen1",
        "",
        "added",
        "",
        "apkName",
        "",
        "hash",
        "hashType",
        "minSdkVersion",
        "maxSdkVersion",
        "targetSdkVersion",
        "packageName",
        "sig",
        "signer",
        "size",
        "srcName",
        "usesPermission",
        "",
        "Lorg/fdroid/index/v1/PermissionV1;",
        "usesPermission23",
        "versionCode",
        "versionName",
        "nativeCode",
        "features",
        "antiFeatures",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getAdded",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getAntiFeatures",
        "()Ljava/util/List;",
        "getApkName",
        "()Ljava/lang/String;",
        "getFeatures",
        "getHash",
        "getHashType",
        "getMaxSdkVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMinSdkVersion",
        "getNativeCode$annotations",
        "()V",
        "getNativeCode",
        "getPackageName",
        "getSig",
        "getSigner",
        "getSize",
        "()J",
        "getSrcName$annotations",
        "getSrcName",
        "getTargetSdkVersion",
        "getUsesPermission$annotations",
        "getUsesPermission",
        "getUsesPermission23$annotations",
        "getUsesPermission23",
        "getVersionCode",
        "getVersionName",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v1/PackageV1;",
        "equals",
        "",
        "other",
        "hashCode",
        "toPackageVersionV2",
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "releaseChannels",
        "appAntiFeatures",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "whatsNew",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$index_release",
        "$serializer",
        "Companion",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/fdroid/index/v1/PackageV1$Companion;


# instance fields
.field private final added:Ljava/lang/Long;

.field private final antiFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final apkName:Ljava/lang/String;

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hash:Ljava/lang/String;

.field private final hashType:Ljava/lang/String;

.field private final maxSdkVersion:Ljava/lang/Integer;

.field private final minSdkVersion:Ljava/lang/Integer;

.field private final nativeCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final sig:Ljava/lang/String;

.field private final signer:Ljava/lang/String;

.field private final size:J

.field private final srcName:Ljava/lang/String;

.field private final targetSdkVersion:Ljava/lang/Integer;

.field private final usesPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation
.end field

.field private final usesPermission23:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation
.end field

.field private final versionCode:Ljava/lang/Long;

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/fdroid/index/v1/PackageV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v1/PackageV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v1/PackageV1;->Companion:Lorg/fdroid/index/v1/PackageV1$Companion;

    const/16 v0, 0x13

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 28
    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lorg/fdroid/index/v1/PermissionV1;->Companion:Lorg/fdroid/index/v1/PermissionV1$Companion;

    invoke-virtual {v3}, Lorg/fdroid/index/v1/PermissionV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-direct {v2, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-virtual {v3}, Lorg/fdroid/index/v1/PermissionV1$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lorg/fdroid/index/v1/PackageV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    const v2, 0x848e

    and-int v3, v1, v2

    if-eq v2, v3, :cond_0

    .line 28
    sget-object v3, Lorg/fdroid/index/v1/PackageV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/PackageV1$$serializer;

    invoke-virtual {v3}, Lorg/fdroid/index/v1/PackageV1$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    :goto_0
    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, p2

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    goto :goto_0

    :goto_1
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    move-object v2, p4

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    move-object v2, p5

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_2

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v2, p6

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_3

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v2, p7

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    :goto_3
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    :goto_4
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    move-object v2, p9

    goto :goto_5

    :cond_4
    move-object v2, p8

    goto :goto_4

    :goto_5
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_5

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object/from16 v2, p10

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    :goto_6
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_6

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    :goto_7
    move-wide/from16 v4, p12

    goto :goto_8

    :cond_6
    move-object/from16 v2, p11

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    goto :goto_7

    :goto_8
    iput-wide v4, v0, Lorg/fdroid/index/v1/PackageV1;->size:J

    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_7

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    move-object/from16 v2, p14

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    :goto_9
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_8

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_a
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    goto :goto_b

    :cond_8
    move-object/from16 v2, p15

    goto :goto_a

    :goto_b
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_9

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_c
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    goto :goto_d

    :cond_9
    move-object/from16 v2, p16

    goto :goto_c

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_a

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    :goto_e
    move-object/from16 v2, p18

    goto :goto_f

    :cond_a
    move-object/from16 v2, p17

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    goto :goto_e

    :goto_f
    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_b

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    goto :goto_10

    :cond_b
    move-object/from16 v2, p19

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    :goto_10
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-nez v2, :cond_c

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    goto :goto_11

    :cond_c
    move-object/from16 v2, p20

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    :goto_11
    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_d

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    goto :goto_12

    :cond_d
    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    :goto_12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p17

    const-string v8, "apkName"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "hash"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "hashType"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "packageName"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "usesPermission"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "usesPermission23"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "versionName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v8, p1

    iput-object v8, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    iput-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    iput-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    move-object/from16 v1, p7

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    iput-object v4, v0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lorg/fdroid/index/v1/PackageV1;->size:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    iput-object v5, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    iput-object v6, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    iput-object v7, v0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v8

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_7

    :cond_7
    move-object/from16 v17, p14

    :goto_7
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_8

    :cond_8
    move-object/from16 v18, p15

    :goto_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    move-object/from16 v19, v2

    goto :goto_9

    :cond_9
    move-object/from16 v19, p16

    :goto_9
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-object/from16 v21, v2

    goto :goto_a

    :cond_a
    move-object/from16 v21, p18

    :goto_a
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v22, v2

    goto :goto_b

    :cond_b
    move-object/from16 v22, p19

    :goto_b
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move-object/from16 v23, v2

    goto :goto_c

    :cond_c
    move-object/from16 v23, p20

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v11, p8

    move-wide/from16 v14, p11

    move-object/from16 v20, p17

    .line 29
    invoke-direct/range {v3 .. v23}, Lorg/fdroid/index/v1/PackageV1;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v1/PackageV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v1/PackageV1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/fdroid/index/v1/PackageV1;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lorg/fdroid/index/v1/PackageV1;->size:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p20

    :goto_12
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lorg/fdroid/index/v1/PackageV1;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v1/PackageV1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getNativeCode$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic getSrcName$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic getUsesPermission$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic getUsesPermission23$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v1/PackageV1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    sget-object v0, Lorg/fdroid/index/v1/PackageV1;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    .line 28
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_4
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/fdroid/index/v1/PackageV1;->size:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 28
    :goto_7
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 28
    :goto_8
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xf

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    if-eqz v2, :cond_15

    :goto_a
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    if-eqz v2, :cond_17

    :goto_b
    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    if-eqz v2, :cond_19

    :goto_c
    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v1/PackageV1;->size:J

    return-wide v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    return-object v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    return-object v0
.end method

.method public final component19()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/fdroid/index/v1/PackageV1;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/index/v1/PackageV1;"
        }
    .end annotation

    .line 0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const-string v0, "apkName"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashType"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermission"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usesPermission23"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lorg/fdroid/index/v1/PackageV1;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lorg/fdroid/index/v1/PackageV1;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v1/PackageV1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v1/PackageV1;

    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lorg/fdroid/index/v1/PackageV1;->size:J

    iget-wide v5, p1, Lorg/fdroid/index/v1/PackageV1;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    iget-object p1, p1, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final getAdded()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAntiFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final getApkName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getHashType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNativeCode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSig()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    return-object v0
.end method

.method public final getSigner()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v1/PackageV1;->size:J

    return-wide v0
.end method

.method public final getSrcName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUsesPermission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    return-object v0
.end method

.method public final getUsesPermission23()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PermissionV1;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    return-object v0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/fdroid/index/v1/PackageV1;->size:J

    invoke-static {v2, v3}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    if-nez v2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final toPackageVersionV2(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/PackageVersionV2;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fdroid/index/v2/PackageVersionV2;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "releaseChannels"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appAntiFeatures"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    const-string v3, "sha256"

    .line 62
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-wide v2, v0, Lorg/fdroid/index/v1/PackageV1;->size:J

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 60
    new-instance v2, Lorg/fdroid/index/v2/FileV1;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 65
    new-instance v8, Lorg/fdroid/index/v2/FileV2;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/16 v16, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    iget-object v11, v0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_3

    :cond_2
    const-wide/16 v12, 0x1

    :goto_3
    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move-object v14, v7

    goto :goto_7

    .line 69
    :cond_3
    new-instance v3, Lorg/fdroid/index/v2/UsesSdkV2;

    iget-object v6, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    .line 70
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_4
    move v6, v10

    :goto_4
    iget-object v14, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    if-eqz v14, :cond_5

    .line 71
    :goto_5
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_5
    iget-object v14, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    if-eqz v14, :cond_6

    goto :goto_5

    .line 69
    :cond_6
    :goto_6
    invoke-direct {v3, v6, v10}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    move-object v14, v3

    :goto_7
    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 74
    new-instance v6, Lorg/fdroid/index/v2/SignerV2;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-direct {v6, v3, v10, v9, v7}, Lorg/fdroid/index/v2/SignerV2;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v6

    goto :goto_8

    :cond_7
    move-object/from16 v16, v7

    :goto_8
    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    .line 1549
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1621
    check-cast v9, Lorg/fdroid/index/v1/PermissionV1;

    .line 75
    new-instance v10, Lorg/fdroid/index/v2/PermissionV2;

    invoke-virtual {v9}, Lorg/fdroid/index/v1/PermissionV1;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lorg/fdroid/index/v1/PermissionV1;->getMaxSdk()Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v7, v9}, Lorg/fdroid/index/v2/PermissionV2;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xa

    goto :goto_9

    :cond_8
    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    .line 1549
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1621
    check-cast v9, Lorg/fdroid/index/v1/PermissionV1;

    .line 76
    new-instance v10, Lorg/fdroid/index/v2/PermissionV2;

    move-object/from16 v17, v3

    invoke-virtual {v9}, Lorg/fdroid/index/v1/PermissionV1;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/fdroid/index/v1/PermissionV1;->getMaxSdk()Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v3, v9}, Lorg/fdroid/index/v2/PermissionV2;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v17

    goto :goto_a

    :cond_9
    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    if-nez v3, :cond_a

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_a
    move-object/from16 v19, v3

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 1549
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v21, v8

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1621
    check-cast v8, Ljava/lang/String;

    .line 78
    new-instance v10, Lorg/fdroid/index/v2/FeatureV2;

    invoke-direct {v10, v8}, Lorg/fdroid/index/v2/FeatureV2;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_b
    move-object/from16 v20, v9

    goto :goto_c

    :cond_c
    move-object/from16 v21, v8

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v20, v3

    .line 66
    :goto_c
    new-instance v8, Lorg/fdroid/index/v2/ManifestV2;

    move-object v10, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v10 .. v20}, Lorg/fdroid/index/v2/ManifestV2;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    if-eqz v3, :cond_d

    const/16 v6, 0xa

    .line 1179
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 1180
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1254
    check-cast v6, Ljava/lang/String;

    .line 82
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 1254
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 82
    :cond_d
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 81
    :cond_e
    invoke-static {v1, v7}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    if-nez p3, :cond_f

    .line 84
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v11, v1

    goto :goto_e

    :cond_f
    move-object/from16 v11, p3

    .line 58
    :goto_e
    new-instance v1, Lorg/fdroid/index/v2/PackageVersionV2;

    move-object v3, v1

    move-object v6, v2

    move-object/from16 v7, v21

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v11}, Lorg/fdroid/index/v2/PackageVersionV2;-><init>(JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/index/v2/ManifestV2;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    .line 62
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/fdroid/index/v1/PackageV1;->added:Ljava/lang/Long;

    iget-object v2, v0, Lorg/fdroid/index/v1/PackageV1;->apkName:Ljava/lang/String;

    iget-object v3, v0, Lorg/fdroid/index/v1/PackageV1;->hash:Ljava/lang/String;

    iget-object v4, v0, Lorg/fdroid/index/v1/PackageV1;->hashType:Ljava/lang/String;

    iget-object v5, v0, Lorg/fdroid/index/v1/PackageV1;->minSdkVersion:Ljava/lang/Integer;

    iget-object v6, v0, Lorg/fdroid/index/v1/PackageV1;->maxSdkVersion:Ljava/lang/Integer;

    iget-object v7, v0, Lorg/fdroid/index/v1/PackageV1;->targetSdkVersion:Ljava/lang/Integer;

    iget-object v8, v0, Lorg/fdroid/index/v1/PackageV1;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lorg/fdroid/index/v1/PackageV1;->sig:Ljava/lang/String;

    iget-object v10, v0, Lorg/fdroid/index/v1/PackageV1;->signer:Ljava/lang/String;

    iget-wide v11, v0, Lorg/fdroid/index/v1/PackageV1;->size:J

    iget-object v13, v0, Lorg/fdroid/index/v1/PackageV1;->srcName:Ljava/lang/String;

    iget-object v14, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission:Ljava/util/List;

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->usesPermission23:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->versionCode:Ljava/lang/Long;

    move-object/from16 v17, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->versionName:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->nativeCode:Ljava/util/List;

    move-object/from16 v19, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->features:Ljava/util/List;

    move-object/from16 v20, v15

    iget-object v15, v0, Lorg/fdroid/index/v1/PackageV1;->antiFeatures:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "PackageV1(added="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", srcName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usesPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usesPermission23="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", antiFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
