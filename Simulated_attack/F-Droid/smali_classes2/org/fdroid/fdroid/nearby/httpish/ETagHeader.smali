.class public Lorg/fdroid/fdroid/nearby/httpish/ETagHeader;
.super Lorg/fdroid/fdroid/nearby/httpish/Header;
.source "ETagHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/httpish/Header;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "etag"

    return-object v0
.end method

.method public handle(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->setCacheTag(Ljava/lang/String;)V

    return-void
.end method
