.class public final Lio/ktor/http/URLProtocol;
.super Ljava/lang/Object;
.source "URLProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/URLProtocol$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/URLProtocol$Companion;

.field private static final HTTP:Lio/ktor/http/URLProtocol;

.field private static final HTTPS:Lio/ktor/http/URLProtocol;

.field private static final SOCKS:Lio/ktor/http/URLProtocol;

.field private static final WS:Lio/ktor/http/URLProtocol;

.field private static final WSS:Lio/ktor/http/URLProtocol;

.field private static final byName:Ljava/util/Map;


# instance fields
.field private final defaultPort:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/ktor/http/URLProtocol$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/URLProtocol$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    .line 24
    new-instance v0, Lio/ktor/http/URLProtocol;

    const-string v1, "http"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/http/URLProtocol;->HTTP:Lio/ktor/http/URLProtocol;

    .line 29
    new-instance v1, Lio/ktor/http/URLProtocol;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v4}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/ktor/http/URLProtocol;->HTTPS:Lio/ktor/http/URLProtocol;

    .line 34
    new-instance v3, Lio/ktor/http/URLProtocol;

    const-string v5, "ws"

    invoke-direct {v3, v5, v2}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/ktor/http/URLProtocol;->WS:Lio/ktor/http/URLProtocol;

    .line 39
    new-instance v2, Lio/ktor/http/URLProtocol;

    const-string v5, "wss"

    invoke-direct {v2, v5, v4}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/ktor/http/URLProtocol;->WSS:Lio/ktor/http/URLProtocol;

    .line 44
    new-instance v4, Lio/ktor/http/URLProtocol;

    const-string v5, "socks"

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/ktor/http/URLProtocol;->SOCKS:Lio/ktor/http/URLProtocol;

    const/4 v5, 0x5

    new-array v5, v5, [Lio/ktor/http/URLProtocol;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 49
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Lio/ktor/http/URLProtocol;

    .line 49
    iget-object v3, v3, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sput-object v2, Lio/ktor/http/URLProtocol;->byName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    iput p2, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    const/4 p2, 0x0

    .line 1064
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 16
    invoke-static {v0}, Lio/ktor/util/CharsetKt;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All characters should be lower case"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static final synthetic access$getByName$cp()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/URLProtocol;->byName:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getHTTP$cp()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/URLProtocol;->HTTP:Lio/ktor/http/URLProtocol;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/http/URLProtocol;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/http/URLProtocol;

    iget-object v1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    iget p1, p1, Lio/ktor/http/URLProtocol;->defaultPort:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDefaultPort()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLProtocol(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
