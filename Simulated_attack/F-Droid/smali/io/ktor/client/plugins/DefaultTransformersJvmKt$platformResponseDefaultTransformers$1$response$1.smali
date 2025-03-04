.class public final Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;
.super Ljava/io/InputStream;
.source "DefaultTransformersJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

.field final synthetic $stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lio/ktor/util/pipeline/PipelineContext;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$stream:Ljava/io/InputStream;

    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$stream:Ljava/io/InputStream;

    .line 28
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 31
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$stream:Ljava/io/InputStream;

    .line 32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    .line 33
    invoke-virtual {v0}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$stream:Ljava/io/InputStream;

    .line 26
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$response$1;->$stream:Ljava/io/InputStream;

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
