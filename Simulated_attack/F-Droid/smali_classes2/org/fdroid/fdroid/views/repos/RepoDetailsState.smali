.class public final Lorg/fdroid/fdroid/views/repos/RepoDetailsState;
.super Ljava/lang/Object;
.source "RepoDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/repos/RepoDetailsState;",
        "",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "archiveEnabled",
        "",
        "(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V",
        "getArchiveEnabled",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getRepo",
        "()Lorg/fdroid/database/Repository;",
        "component1",
        "component2",
        "copy",
        "(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_fullRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final archiveEnabled:Ljava/lang/Boolean;

.field private final repo:Lorg/fdroid/database/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;-><init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;
    .locals 0

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->copy(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/fdroid/database/Repository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    invoke-direct {v0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;-><init>(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    iget-object v3, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    iget-object p1, p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getArchiveEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRepo()Lorg/fdroid/database/Repository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->repo:Lorg/fdroid/database/Repository;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->archiveEnabled:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RepoDetailsState(repo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", archiveEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
