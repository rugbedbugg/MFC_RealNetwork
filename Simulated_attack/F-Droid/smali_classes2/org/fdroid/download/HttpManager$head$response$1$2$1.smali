.class final Lorg/fdroid/download/HttpManager$head$response$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager$head$response$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/download/HttpManager$head$response$1$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/download/HttpManager$head$response$1$2$1;

    invoke-direct {v0}, Lorg/fdroid/download/HttpManager$head$response$1$2$1;-><init>()V

    sput-object v0, Lorg/fdroid/download/HttpManager$head$response$1$2$1;->INSTANCE:Lorg/fdroid/download/HttpManager$head$response$1$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManager$head$response$1$2$1;->invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)V
    .locals 2

    const-string v0, "$this$timeout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setConnectTimeoutMillis(Ljava/lang/Long;)V

    return-void
.end method
