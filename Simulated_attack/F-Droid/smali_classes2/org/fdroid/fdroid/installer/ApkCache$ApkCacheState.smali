.class public final enum Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;
.super Ljava/lang/Enum;
.source "ApkCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/installer/ApkCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApkCacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

.field public static final enum CACHED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

.field public static final enum CORRUPTED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

.field public static final enum MISS_OR_PARTIAL:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;


# direct methods
.method private static synthetic $values()[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    const/4 v1, 0x0

    sget-object v2, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->MISS_OR_PARTIAL:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->CACHED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->CORRUPTED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    const-string v1, "MISS_OR_PARTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->MISS_OR_PARTIAL:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    new-instance v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    const-string v1, "CACHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->CACHED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    new-instance v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    const-string v1, "CORRUPTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->CORRUPTED:Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    invoke-static {}, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->$values()[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->$VALUES:[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;
    .locals 1

    const-class v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    .line 42
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    return-object p0
.end method

.method public static values()[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->$VALUES:[Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    .line 42
    invoke-virtual {v0}, [Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fdroid/fdroid/installer/ApkCache$ApkCacheState;

    return-object v0
.end method
