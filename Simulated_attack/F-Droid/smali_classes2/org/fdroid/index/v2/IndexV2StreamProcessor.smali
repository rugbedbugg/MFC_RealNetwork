.class public interface abstract Lorg/fdroid/index/v2/IndexV2StreamProcessor;
.super Ljava/lang/Object;
.source "IndexV2StreamProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/fdroid/index/v2/IndexV2StreamProcessor;",
        "",
        "process",
        "",
        "version",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "onAppProcessed",
        "Lkotlin/Function1;",
        "",
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


# virtual methods
.method public abstract process(JLjava/io/InputStream;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation
.end method
