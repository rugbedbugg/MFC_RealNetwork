.class public Lorg/fdroid/fdroid/nearby/httpish/FileDetails;
.super Ljava/lang/Object;
.source "FileDetails.java"


# instance fields
.field private cacheTag:Ljava/lang/String;

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheTag()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->cacheTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->fileSize:J

    return-wide v0
.end method

.method setCacheTag(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->cacheTag:Ljava/lang/String;

    return-void
.end method

.method setFileSize(I)V
    .locals 2

    .line 0
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->fileSize:J

    return-void
.end method
