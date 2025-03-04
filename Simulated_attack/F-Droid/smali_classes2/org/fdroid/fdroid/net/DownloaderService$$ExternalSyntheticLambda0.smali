.class public final synthetic Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/fdroid/ProgressListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/net/DownloaderService;

.field public final synthetic f$1:[J

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Lorg/fdroid/fdroid/data/App;

.field public final synthetic f$4:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/net/DownloaderService;[JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/net/DownloaderService;

    iput-object p2, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$1:[J

    iput-object p3, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-object p4, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$3:Lorg/fdroid/fdroid/data/App;

    iput-object p5, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$4:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/net/DownloaderService;

    iget-object v1, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$1:[J

    iget-object v2, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iget-object v3, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$3:Lorg/fdroid/fdroid/data/App;

    iget-object v4, p0, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;->f$4:Lorg/fdroid/fdroid/data/Apk;

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lorg/fdroid/fdroid/net/DownloaderService;->$r8$lambda$3F6q1K1NPdZex_ryK4FaV6PCZqk(Lorg/fdroid/fdroid/net/DownloaderService;[JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V

    return-void
.end method
