.class public abstract Lio/ktor/http/content/OutgoingContent;
.super Ljava/lang/Object;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/content/OutgoingContent$ByteArrayContent;,
        Lio/ktor/http/content/OutgoingContent$NoContent;,
        Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentLength()Ljava/lang/Long;
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 44
    sget-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    invoke-virtual {v0}, Lio/ktor/http/Headers$Companion;->getEmpty()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method
