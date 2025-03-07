.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "Request.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private final headers:Lokhttp3/Headers;

.field private lazyCacheControl:Lokhttp3/CacheControl;

.field private final method:Ljava/lang/String;

.field private final tags:Ljava/util/Map;

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object p2, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    iput-object p4, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object p5, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final body()Lokhttp3/RequestBody;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final cacheControl()Lokhttp3/CacheControl;
    .locals 2

    iget-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_0
    return-object v0
.end method

.method public final getTags$okhttp()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 41
    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 39
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lokhttp3/Request$Builder;
    .locals 1

    .line 61
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 117
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", headers=["

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 1865
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lkotlin/Pair;

    .line 119
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    .line 129
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, ", tags="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x7d

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final url()Lokhttp3/HttpUrl;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
