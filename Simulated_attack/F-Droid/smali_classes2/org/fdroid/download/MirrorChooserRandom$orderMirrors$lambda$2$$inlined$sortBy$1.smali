.class public final Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/MirrorChooserRandom;->orderMirrors(Lorg/fdroid/download/DownloadRequest;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "T",
        "kotlin.jvm.PlatformType",
        "a",
        "b",
        "",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $downloadRequest$inlined:Lorg/fdroid/download/DownloadRequest;


# direct methods
.method public constructor <init>(Lorg/fdroid/download/DownloadRequest;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;->$downloadRequest$inlined:Lorg/fdroid/download/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lorg/fdroid/download/Mirror;

    iget-object v0, p0, Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;->$downloadRequest$inlined:Lorg/fdroid/download/DownloadRequest;

    .line 94
    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getTryFirstMirror()Lorg/fdroid/download/Mirror;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p2, Lorg/fdroid/download/Mirror;

    iget-object v0, p0, Lorg/fdroid/download/MirrorChooserRandom$orderMirrors$lambda$2$$inlined$sortBy$1;->$downloadRequest$inlined:Lorg/fdroid/download/DownloadRequest;

    .line 94
    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getTryFirstMirror()Lorg/fdroid/download/Mirror;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
