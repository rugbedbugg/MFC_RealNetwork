.class public final Lio/ktor/client/plugins/BodyProgress$Plugin;
.super Ljava/lang/Object;
.source "BodyProgress.kt"

# interfaces
.implements Lio/ktor/client/plugins/HttpClientPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/BodyProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
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
    invoke-direct {p0}, Lio/ktor/client/plugins/BodyProgress$Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 50
    invoke-static {}, Lio/ktor/client/plugins/BodyProgress;->access$getKey$cp()Lio/ktor/util/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public install(Lio/ktor/client/plugins/BodyProgress;Lio/ktor/client/HttpClient;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lio/ktor/client/plugins/BodyProgress;->access$handle(Lio/ktor/client/plugins/BodyProgress;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public bridge synthetic install(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 49
    check-cast p1, Lio/ktor/client/plugins/BodyProgress;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/BodyProgress$Plugin;->install(Lio/ktor/client/plugins/BodyProgress;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/BodyProgress;
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lio/ktor/client/plugins/BodyProgress;

    invoke-direct {p1}, Lio/ktor/client/plugins/BodyProgress;-><init>()V

    return-object p1
.end method

.method public bridge synthetic prepare(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/BodyProgress$Plugin;->prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/BodyProgress;

    move-result-object p1

    return-object p1
.end method
