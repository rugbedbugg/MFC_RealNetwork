.class public final Lorg/fdroid/CompatibilityCheckerUtils;
.super Ljava/lang/Object;
.source "CompatibilityChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/fdroid/CompatibilityCheckerUtils;",
        "",
        "()V",
        "minInstallableTargetSdk",
        "",
        "sdkInt",
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


# static fields
.field public static final INSTANCE:Lorg/fdroid/CompatibilityCheckerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/CompatibilityCheckerUtils;

    invoke-direct {v0}, Lorg/fdroid/CompatibilityCheckerUtils;-><init>()V

    sput-object v0, Lorg/fdroid/CompatibilityCheckerUtils;->INSTANCE:Lorg/fdroid/CompatibilityCheckerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic minInstallableTargetSdk$default(Lorg/fdroid/CompatibilityCheckerUtils;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fdroid/CompatibilityCheckerUtils;->minInstallableTargetSdk(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final minInstallableTargetSdk()I
    .locals 3

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/fdroid/CompatibilityCheckerUtils;->minInstallableTargetSdk$default(Lorg/fdroid/CompatibilityCheckerUtils;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final minInstallableTargetSdk(I)I
    .locals 1

    .line 0
    const/16 v0, 0x22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/16 p1, 0x17

    :goto_0
    return p1
.end method
