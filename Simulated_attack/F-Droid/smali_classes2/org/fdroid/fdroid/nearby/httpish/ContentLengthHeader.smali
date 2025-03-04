.class public Lorg/fdroid/fdroid/nearby/httpish/ContentLengthHeader;
.super Lorg/fdroid/fdroid/nearby/httpish/Header;
.source "ContentLengthHeader.java"


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
    const-string v0, "content-length"

    return-object v0
.end method

.method public handle(Lorg/fdroid/fdroid/nearby/httpish/FileDetails;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/nearby/httpish/FileDetails;->setFileSize(I)V

    return-void
.end method
