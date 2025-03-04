.class public final Lorg/fdroid/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BS\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\rBS\u0008\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u000fH\u00c6\u0003J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u0011\u0010\"\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003JY\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u00122\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020*H\u00d6\u0001J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001a\u00a8\u0006,"
    }
    d2 = {
        "Lorg/fdroid/download/DownloadRequest;",
        "",
        "path",
        "",
        "mirrors",
        "",
        "Lorg/fdroid/download/Mirror;",
        "proxy",
        "Ljava/net/Proxy;",
        "Lio/ktor/client/engine/ProxyConfig;",
        "username",
        "password",
        "tryFirstMirror",
        "(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V",
        "indexFile",
        "Lorg/fdroid/IndexFile;",
        "(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V",
        "hasCredentials",
        "",
        "getHasCredentials",
        "()Z",
        "getIndexFile",
        "()Lorg/fdroid/IndexFile;",
        "getMirrors",
        "()Ljava/util/List;",
        "getPassword",
        "()Ljava/lang/String;",
        "getProxy",
        "()Ljava/net/Proxy;",
        "getTryFirstMirror",
        "()Lorg/fdroid/download/Mirror;",
        "getUsername",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "download_release"
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
.field private final hasCredentials:Z

.field private final indexFile:Lorg/fdroid/IndexFile;

.field private final mirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation
.end field

.field private final password:Ljava/lang/String;

.field private final proxy:Ljava/net/Proxy;

.field private final tryFirstMirror:Lorg/fdroid/download/Mirror;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/download/Mirror;",
            ")V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v2, Lorg/fdroid/download/DownloadRequest$1;

    invoke-direct {v2, p1}, Lorg/fdroid/download/DownloadRequest$1;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 24
    invoke-direct/range {v2 .. v8}, Lorg/fdroid/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/download/Mirror;",
            ")V"
        }
    .end annotation

    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    iput-object p2, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    iput-object p3, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    iput-object p4, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    iput-object p6, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/fdroid/download/DownloadRequest;->hasCredentials:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 6
    invoke-direct/range {v2 .. v8}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILjava/lang/Object;)Lorg/fdroid/download/DownloadRequest;
    .locals 4

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/fdroid/download/DownloadRequest;->copy(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/DownloadRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/fdroid/IndexFile;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/net/Proxy;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lorg/fdroid/download/Mirror;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    return-object v0
.end method

.method public final copy(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)Lorg/fdroid/download/DownloadRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/IndexFile;",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/download/Mirror;",
            ")",
            "Lorg/fdroid/download/DownloadRequest;"
        }
    .end annotation

    .line 0
    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/download/DownloadRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/download/DownloadRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/download/DownloadRequest;

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    iget-object v3, p1, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    iget-object v3, p1, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    iget-object v3, p1, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    iget-object p1, p1, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getHasCredentials()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/download/DownloadRequest;->hasCredentials:Z

    return v0
.end method

.method public final getIndexFile()Lorg/fdroid/IndexFile;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    return-object v0
.end method

.method public final getMirrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getTryFirstMirror()Lorg/fdroid/download/Mirror;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lorg/fdroid/download/Mirror;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/DownloadRequest;->indexFile:Lorg/fdroid/IndexFile;

    iget-object v1, p0, Lorg/fdroid/download/DownloadRequest;->mirrors:Ljava/util/List;

    iget-object v2, p0, Lorg/fdroid/download/DownloadRequest;->proxy:Ljava/net/Proxy;

    iget-object v3, p0, Lorg/fdroid/download/DownloadRequest;->username:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/download/DownloadRequest;->password:Ljava/lang/String;

    iget-object v5, p0, Lorg/fdroid/download/DownloadRequest;->tryFirstMirror:Lorg/fdroid/download/Mirror;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadRequest(indexFile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mirrors="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", proxy="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", username="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", password="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tryFirstMirror="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
