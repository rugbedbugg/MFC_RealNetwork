.class final Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Lorg/fdroid/download/BytesReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Downloader;->downloadFromBytesReceiver(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $bytesTotal:J

.field final synthetic $lastTimeReported:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $messageDigest:Ljava/security/MessageDigest;

.field final synthetic $outputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lorg/fdroid/download/Downloader;


# direct methods
.method constructor <init>(Lorg/fdroid/download/Downloader;Ljava/io/FileOutputStream;Ljava/security/MessageDigest;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->this$0:Lorg/fdroid/download/Downloader;

    iput-object p2, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$outputStream:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$messageDigest:Ljava/security/MessageDigest;

    iput-object p4, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p5, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$bytesTotal:J

    iput-object p7, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$lastTimeReported:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final receive([BLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    iget-object p3, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->this$0:Lorg/fdroid/download/Downloader;

    .line 115
    invoke-static {p3}, Lorg/fdroid/download/Downloader;->access$throwExceptionIfInterrupted(Lorg/fdroid/download/Downloader;)V

    iget-object p3, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$outputStream:Ljava/io/FileOutputStream;

    .line 116
    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p3, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$messageDigest:Ljava/security/MessageDigest;

    if-eqz p3, :cond_0

    .line 117
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    iget-object p3, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    .line 118
    iget-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v0, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$bytesTotal:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    move-wide v7, v0

    goto :goto_0

    :cond_2
    move-wide v7, v2

    :goto_0
    iget-object p1, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$lastTimeReported:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->this$0:Lorg/fdroid/download/Downloader;

    .line 120
    iget-wide v3, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object p2, p0, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v5, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static/range {v2 .. v8}, Lorg/fdroid/download/Downloader;->access$reportProgress(Lorg/fdroid/download/Downloader;JJJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 121
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
