.class public final Lorg/fdroid/database/VersionedString;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/VersionedString$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0081\u0008\u0018\u0000 %2\u00020\u0001:\u0001%B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015JL\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u000bH\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006&"
    }
    d2 = {
        "Lorg/fdroid/database/VersionedString;",
        "",
        "repoId",
        "",
        "packageName",
        "",
        "versionId",
        "type",
        "Lorg/fdroid/database/VersionedStringType;",
        "name",
        "version",
        "",
        "(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getName",
        "()Ljava/lang/String;",
        "getPackageName",
        "getRepoId",
        "()J",
        "getType",
        "()Lorg/fdroid/database/VersionedStringType;",
        "getVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getVersionId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)Lorg/fdroid/database/VersionedString;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field public static final Companion:Lorg/fdroid/database/VersionedString$Companion;

.field public static final TABLE:Ljava/lang/String; = "VersionedString"


# instance fields
.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final repoId:J

.field private final type:Lorg/fdroid/database/VersionedStringType;

.field private final version:Ljava/lang/Integer;

.field private final versionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/database/VersionedString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/database/VersionedString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/database/VersionedString;->Companion:Lorg/fdroid/database/VersionedString$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    iput-object p6, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    iput-object p7, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 178
    invoke-direct/range {v1 .. v8}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/database/VersionedString;JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/fdroid/database/VersionedString;
    .locals 8

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lorg/fdroid/database/VersionedString;->repoId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lorg/fdroid/database/VersionedString;->copy(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)Lorg/fdroid/database/VersionedString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lorg/fdroid/database/VersionedStringType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)Lorg/fdroid/database/VersionedString;
    .locals 9

    .line 0
    const-string v0, "packageName"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/database/VersionedString;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/VersionedString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/VersionedString;

    iget-wide v3, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/VersionedString;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    iget-object v3, p1, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    return-wide v0
.end method

.method public final getType()Lorg/fdroid/database/VersionedStringType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVersionId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/VersionedString;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/VersionedString;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/database/VersionedString;->versionId:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/database/VersionedString;->type:Lorg/fdroid/database/VersionedStringType;

    iget-object v5, p0, Lorg/fdroid/database/VersionedString;->name:Ljava/lang/String;

    iget-object v6, p0, Lorg/fdroid/database/VersionedString;->version:Ljava/lang/Integer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VersionedString(repoId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
