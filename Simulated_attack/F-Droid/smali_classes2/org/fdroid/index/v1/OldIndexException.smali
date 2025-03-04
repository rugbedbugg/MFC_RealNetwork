.class public final Lorg/fdroid/index/v1/OldIndexException;
.super Ljava/lang/Exception;
.source "IndexV1StreamProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/fdroid/index/v1/OldIndexException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "isSameTimestamp",
        "",
        "msg",
        "",
        "(ZLjava/lang/String;)V",
        "()Z",
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


# instance fields
.field private final isSameTimestamp:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lorg/fdroid/index/v1/OldIndexException;->isSameTimestamp:Z

    return-void
.end method


# virtual methods
.method public final isSameTimestamp()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/index/v1/OldIndexException;->isSameTimestamp:Z

    return v0
.end method
