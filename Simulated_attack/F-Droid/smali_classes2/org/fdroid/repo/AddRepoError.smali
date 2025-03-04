.class public final Lorg/fdroid/repo/AddRepoError;
.super Lorg/fdroid/repo/AddRepoState;
.source "RepoAdder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/repo/AddRepoError$ErrorType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\r\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u00c6\u0003J%\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/repo/AddRepoError;",
        "Lorg/fdroid/repo/AddRepoState;",
        "errorType",
        "Lorg/fdroid/repo/AddRepoError$ErrorType;",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V",
        "getErrorType",
        "()Lorg/fdroid/repo/AddRepoError$ErrorType;",
        "getException",
        "()Ljava/lang/Exception;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ErrorType",
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


# instance fields
.field private final errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "errorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lorg/fdroid/repo/AddRepoState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    iput-object p2, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/repo/AddRepoError;Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;ILjava/lang/Object;)Lorg/fdroid/repo/AddRepoError;
    .locals 0

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/repo/AddRepoError;->copy(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)Lorg/fdroid/repo/AddRepoError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/fdroid/repo/AddRepoError$ErrorType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    return-object v0
.end method

.method public final component2()Ljava/lang/Exception;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)Lorg/fdroid/repo/AddRepoError;
    .locals 1

    .line 0
    const-string v0, "errorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/repo/AddRepoError;

    invoke-direct {v0, p1, p2}, Lorg/fdroid/repo/AddRepoError;-><init>(Lorg/fdroid/repo/AddRepoError$ErrorType;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/repo/AddRepoError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/repo/AddRepoError;

    iget-object v1, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    iget-object v3, p1, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    iget-object p1, p1, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getErrorType()Lorg/fdroid/repo/AddRepoError$ErrorType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

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
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/fdroid/repo/AddRepoError;->errorType:Lorg/fdroid/repo/AddRepoError$ErrorType;

    iget-object v1, p0, Lorg/fdroid/repo/AddRepoError;->exception:Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddRepoError(errorType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exception="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
