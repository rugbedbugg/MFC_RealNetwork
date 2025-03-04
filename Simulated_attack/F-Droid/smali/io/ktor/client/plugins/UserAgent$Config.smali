.class public final Lio/ktor/client/plugins/UserAgent$Config;
.super Ljava/lang/Object;
.source "UserAgent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private agent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/UserAgent$Config;->agent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Ktor http-client"

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/UserAgent$Config;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAgent()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/UserAgent$Config;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public final setAgent(Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/plugins/UserAgent$Config;->agent:Ljava/lang/String;

    return-void
.end method
