.class final Lorg/fdroid/download/Downloader$reportProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Downloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Downloader;->reportProgress(JJJ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bytesRead:J

.field final synthetic $bytesTotal:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/fdroid/download/Downloader$reportProgress$1;->$bytesRead:J

    iput-wide p3, p0, Lorg/fdroid/download/Downloader$reportProgress$1;->$bytesTotal:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lorg/fdroid/download/Downloader$reportProgress$1;->$bytesRead:J

    iget-wide v2, p0, Lorg/fdroid/download/Downloader$reportProgress$1;->$bytesTotal:J

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
