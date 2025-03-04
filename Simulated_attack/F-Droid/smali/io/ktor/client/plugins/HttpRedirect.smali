.class public final Lio/ktor/client/plugins/HttpRedirect;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRedirect$Config;,
        Lio/ktor/client/plugins/HttpRedirect$Plugin;
    }
.end annotation


# static fields
.field private static final HttpResponseRedirect:Lio/ktor/events/EventDefinition;

.field public static final Plugin:Lio/ktor/client/plugins/HttpRedirect$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;


# instance fields
.field private final allowHttpsDowngrade:Z

.field private final checkHttpMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpRedirect$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRedirect$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->Plugin:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    .line 47
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "HttpRedirect"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->key:Lio/ktor/util/AttributeKey;

    .line 52
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->HttpResponseRedirect:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpRedirect;->checkHttpMethod:Z

    iput-boolean p2, p0, Lio/ktor/client/plugins/HttpRedirect;->allowHttpsDowngrade:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpRedirect;-><init>(ZZ)V

    return-void
.end method

.method public static final synthetic access$getAllowHttpsDowngrade$p(Lio/ktor/client/plugins/HttpRedirect;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirect;->allowHttpsDowngrade:Z

    return p0
.end method

.method public static final synthetic access$getCheckHttpMethod$p(Lio/ktor/client/plugins/HttpRedirect;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirect;->checkHttpMethod:Z

    return p0
.end method

.method public static final synthetic access$getHttpResponseRedirect$cp()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpRedirect;->HttpResponseRedirect:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpRedirect;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method
