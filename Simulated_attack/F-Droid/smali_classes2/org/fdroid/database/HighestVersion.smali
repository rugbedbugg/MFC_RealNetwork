.class public final Lorg/fdroid/database/HighestVersion;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/HighestVersion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0001\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012&\u0008\u0002\u0010\u0006\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007j\u0002`\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tR/\u0010\u0006\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007j\u0002`\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/fdroid/database/HighestVersion;",
        "",
        "repoId",
        "",
        "packageName",
        "",
        "antiFeatures",
        "",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "(JLjava/lang/String;Ljava/util/Map;)V",
        "getAntiFeatures",
        "()Ljava/util/Map;",
        "getPackageName",
        "()Ljava/lang/String;",
        "getRepoId",
        "()J",
        "Companion",
        "database_release"
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
.field public static final Companion:Lorg/fdroid/database/HighestVersion$Companion;

.field public static final TABLE:Ljava/lang/String; = "HighestVersion"


# instance fields
.field private final antiFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final repoId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/HighestVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/HighestVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/HighestVersion;->Companion:Lorg/fdroid/database/HighestVersion$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/HighestVersion;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/HighestVersion;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/HighestVersion;->antiFeatures:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 153
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/database/HighestVersion;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getAntiFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/HighestVersion;->antiFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/HighestVersion;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/HighestVersion;->repoId:J

    return-wide v0
.end method
