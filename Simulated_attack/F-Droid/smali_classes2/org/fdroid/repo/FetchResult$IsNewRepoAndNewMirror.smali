.class public final Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;
.super Lorg/fdroid/repo/FetchResult;
.source "RepoAdder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/repo/FetchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsNewRepoAndNewMirror"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00d6\u0003J\t\u0010\u0007\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\t\u001a\u00020\nH\u00d6\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;",
        "Lorg/fdroid/repo/FetchResult;",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final INSTANCE:Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    invoke-direct {v0}, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;-><init>()V

    sput-object v0, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;->INSTANCE:Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lorg/fdroid/repo/FetchResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    const v0, 0x3a6f50cb

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "IsNewRepoAndNewMirror"

    return-object v0
.end method
