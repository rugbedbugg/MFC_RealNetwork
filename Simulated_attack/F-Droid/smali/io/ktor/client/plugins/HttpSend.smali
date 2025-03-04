.class public final Lio/ktor/client/plugins/HttpSend;
.super Ljava/lang/Object;
.source "HttpSend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpSend$Config;,
        Lio/ktor/client/plugins/HttpSend$DefaultSender;,
        Lio/ktor/client/plugins/HttpSend$InterceptedSender;,
        Lio/ktor/client/plugins/HttpSend$Plugin;
    }
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/HttpSend$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;


# instance fields
.field private final interceptors:Ljava/util/List;

.field private final maxSendCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpSend$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpSend$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpSend;->Plugin:Lio/ktor/client/plugins/HttpSend$Plugin;

    .line 78
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "HttpSend"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpSend;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/client/plugins/HttpSend;->maxSendCount:I

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/HttpSend;->interceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpSend;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getInterceptors$p(Lio/ktor/client/plugins/HttpSend;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/ktor/client/plugins/HttpSend;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getMaxSendCount$p(Lio/ktor/client/plugins/HttpSend;)I
    .locals 0

    .line 35
    iget p0, p0, Lio/ktor/client/plugins/HttpSend;->maxSendCount:I

    return p0
.end method


# virtual methods
.method public final intercept(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/HttpSend;->interceptors:Ljava/util/List;

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
