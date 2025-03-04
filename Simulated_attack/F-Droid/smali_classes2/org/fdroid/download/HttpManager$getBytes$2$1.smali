.class final Lorg/fdroid/download/HttpManager$getBytes$2$1;
.super Ljava/lang/Object;
.source "HttpManager.kt"

# interfaces
.implements Lorg/fdroid/download/BytesReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager;->getBytes$download_release(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$getBytes$2$1;->$it:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final receive([BLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lorg/fdroid/download/HttpManager$getBytes$2$1;->$it:Ljava/io/ByteArrayOutputStream;

    .line 205
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
