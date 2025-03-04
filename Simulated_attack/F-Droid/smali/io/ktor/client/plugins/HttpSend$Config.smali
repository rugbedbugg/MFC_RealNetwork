.class public final Lio/ktor/client/plugins/HttpSend$Config;
.super Ljava/lang/Object;
.source "HttpSend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private maxSendCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lio/ktor/client/plugins/HttpSend$Config;->maxSendCount:I

    return-void
.end method


# virtual methods
.method public final getMaxSendCount()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/client/plugins/HttpSend$Config;->maxSendCount:I

    return v0
.end method
