.class final Lorg/fdroid/download/HttpDownloader$download$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpDownloader;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/download/HttpDownloader;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpDownloader;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpDownloader$download$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloader$download$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    .line 135
    invoke-static {v0}, Lorg/fdroid/download/HttpDownloader;->access$getRequest$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cached, not downloading."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
