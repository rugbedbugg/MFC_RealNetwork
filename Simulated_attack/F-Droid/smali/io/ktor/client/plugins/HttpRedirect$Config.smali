.class public final Lio/ktor/client/plugins/HttpRedirect$Config;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRedirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private allowHttpsDowngrade:Z

.field private checkHttpMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->checkHttpMethod:Z

    return-void
.end method


# virtual methods
.method public final getAllowHttpsDowngrade()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->allowHttpsDowngrade:Z

    return v0
.end method

.method public final getCheckHttpMethod()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->checkHttpMethod:Z

    return v0
.end method
