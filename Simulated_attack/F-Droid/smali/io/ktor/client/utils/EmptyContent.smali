.class public final Lio/ktor/client/utils/EmptyContent;
.super Lio/ktor/http/content/OutgoingContent$NoContent;
.source "Content.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/client/utils/EmptyContent;

.field private static final contentLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/utils/EmptyContent;

    invoke-direct {v0}, Lio/ktor/client/utils/EmptyContent;-><init>()V

    sput-object v0, Lio/ktor/client/utils/EmptyContent;->INSTANCE:Lio/ktor/client/utils/EmptyContent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$NoContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 2

    sget-wide v0, Lio/ktor/client/utils/EmptyContent;->contentLength:J

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "EmptyContent"

    return-object v0
.end method
