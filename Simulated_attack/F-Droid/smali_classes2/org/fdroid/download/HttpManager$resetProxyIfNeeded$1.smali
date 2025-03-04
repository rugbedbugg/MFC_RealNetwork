.class final Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager;->resetProxyIfNeeded(Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newProxy:Ljava/net/Proxy;

.field final synthetic this$0:Lorg/fdroid/download/HttpManager;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;->this$0:Lorg/fdroid/download/HttpManager;

    iput-object p2, p0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;->$newProxy:Ljava/net/Proxy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;->this$0:Lorg/fdroid/download/HttpManager;

    .line 230
    invoke-virtual {v0}, Lorg/fdroid/download/HttpManager;->getCurrentProxy$download_release()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;->$newProxy:Ljava/net/Proxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching proxy from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] to ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
