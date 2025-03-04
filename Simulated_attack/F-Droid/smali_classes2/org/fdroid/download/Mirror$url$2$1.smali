.class final Lorg/fdroid/download/Mirror$url$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Mirror.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Mirror$url$2;->invoke()Lio/ktor/http/Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/download/Mirror;


# direct methods
.method constructor <init>(Lorg/fdroid/download/Mirror;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/Mirror$url$2$1;->this$0:Lorg/fdroid/download/Mirror;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/download/Mirror$url$2$1;->this$0:Lorg/fdroid/download/Mirror;

    .line 25
    invoke-virtual {v0}, Lorg/fdroid/download/Mirror;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Someone gave us an invalid URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
