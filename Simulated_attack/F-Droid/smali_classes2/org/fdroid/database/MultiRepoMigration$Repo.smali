.class final Lorg/fdroid/database/MultiRepoMigration$Repo;
.super Ljava/lang/Object;
.source "Migrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/MultiRepoMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Repo"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final certificate:Ljava/lang/String;

.field private final repoId:J

.field private final weight:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    iput-object p3, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    iput p5, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/database/MultiRepoMigration$Repo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/database/MultiRepoMigration$Repo;

    iget-wide v3, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    iget-wide v5, p1, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->weight:I

    iget p1, p1, Lorg/fdroid/database/MultiRepoMigration$Repo;->weight:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getCertificate()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepoId()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->weight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isArchive()Z
    .locals 5

    iget-object v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 105
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v4, "/archive"

    invoke-static {v0, v4, v3, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->repoId:J

    iget-object v2, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->address:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->certificate:Ljava/lang/String;

    iget v4, p0, Lorg/fdroid/database/MultiRepoMigration$Repo;->weight:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repo(repoId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", address="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", certificate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", weight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
