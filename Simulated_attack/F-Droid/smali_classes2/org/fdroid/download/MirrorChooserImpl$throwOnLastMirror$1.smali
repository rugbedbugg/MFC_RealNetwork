.class final Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MirrorChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/MirrorChooserImpl;->throwOnLastMirror(Ljava/lang/Exception;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic $wasLastMirror:Z


# direct methods
.method constructor <init>(Ljava/lang/Exception;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;->$e:Ljava/lang/Exception;

    iput-boolean p2, p0, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;->$wasLastMirror:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;->$e:Ljava/lang/Exception;

    .line 75
    instance-of v1, v0, Lio/ktor/client/plugins/ResponseException;

    if-eqz v1, :cond_0

    check-cast v0, Lio/ktor/client/plugins/ResponseException;

    invoke-virtual {v0}, Lio/ktor/client/plugins/ResponseException;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;->$wasLastMirror:Z

    const-string v2, ")"

    if-eqz v1, :cond_2

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last mirror, rethrowing... ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying other mirror now... ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
