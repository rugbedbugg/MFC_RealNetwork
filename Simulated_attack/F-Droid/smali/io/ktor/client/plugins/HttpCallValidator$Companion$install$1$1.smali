.class final Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpCallValidator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/HttpCallValidator;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpCallValidator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1$1;->$plugin:Lio/ktor/client/plugins/HttpCallValidator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1$1;->$plugin:Lio/ktor/client/plugins/HttpCallValidator;

    .line 129
    invoke-static {v0}, Lio/ktor/client/plugins/HttpCallValidator;->access$getExpectSuccess$p(Lio/ktor/client/plugins/HttpCallValidator;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
