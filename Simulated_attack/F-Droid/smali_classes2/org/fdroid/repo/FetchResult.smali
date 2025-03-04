.class public abstract Lorg/fdroid/repo/FetchResult;
.super Ljava/lang/Object;
.source "RepoAdder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/repo/FetchResult$IsExistingMirror;,
        Lorg/fdroid/repo/FetchResult$IsExistingRepository;,
        Lorg/fdroid/repo/FetchResult$IsNewMirror;,
        Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;,
        Lorg/fdroid/repo/FetchResult$IsNewRepository;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0005\u0008\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/fdroid/repo/FetchResult;",
        "",
        "()V",
        "IsExistingMirror",
        "IsExistingRepository",
        "IsNewMirror",
        "IsNewRepoAndNewMirror",
        "IsNewRepository",
        "Lorg/fdroid/repo/FetchResult$IsExistingMirror;",
        "Lorg/fdroid/repo/FetchResult$IsExistingRepository;",
        "Lorg/fdroid/repo/FetchResult$IsNewMirror;",
        "Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;",
        "Lorg/fdroid/repo/FetchResult$IsNewRepository;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/repo/FetchResult;-><init>()V

    return-void
.end method
