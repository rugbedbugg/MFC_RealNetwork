.class public final Lio/ktor/client/plugins/HttpRequestLifecycle;
.super Ljava/lang/Object;
.source "HttpRequestLifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;
    }
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->Plugin:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    .line 26
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "RequestLifecycle"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRequestLifecycle;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method
