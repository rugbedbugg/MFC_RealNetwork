.class final Lorg/fdroid/download/HttpDownloader$downloadToFile$3;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpDownloader;->downloadToFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lorg/fdroid/download/HttpDownloader;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;->this$0:Lorg/fdroid/download/HttpDownloader;

    iput-object p2, p0, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;->$resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;->this$0:Lorg/fdroid/download/HttpDownloader;

    .line 155
    invoke-static {v0}, Lorg/fdroid/download/HttpDownloader;->access$getRequest$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;->$resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (is resumable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
