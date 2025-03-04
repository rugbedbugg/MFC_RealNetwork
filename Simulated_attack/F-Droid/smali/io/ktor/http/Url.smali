.class public final Lio/ktor/http/Url;
.super Ljava/lang/Object;
.source "Url.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Url$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Url$Companion;


# instance fields
.field private final encodedFragment$delegate:Lkotlin/Lazy;

.field private final encodedPassword$delegate:Lkotlin/Lazy;

.field private final encodedPath$delegate:Lkotlin/Lazy;

.field private final encodedPathAndQuery$delegate:Lkotlin/Lazy;

.field private final encodedQuery$delegate:Lkotlin/Lazy;

.field private final encodedUser$delegate:Lkotlin/Lazy;

.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final parameters:Lio/ktor/http/Parameters;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;

.field private final protocol:Lio/ktor/http/URLProtocol;

.field private final specifiedPort:I

.field private final trailingQuery:Z

.field private final urlString:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/http/Url$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/Url$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/Url;->Companion:Lio/ktor/http/Url$Companion;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlString"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    iput-object p2, p0, Lio/ktor/http/Url;->host:Ljava/lang/String;

    iput p3, p0, Lio/ktor/http/Url;->specifiedPort:I

    iput-object p4, p0, Lio/ktor/http/Url;->pathSegments:Ljava/util/List;

    iput-object p5, p0, Lio/ktor/http/Url;->parameters:Lio/ktor/http/Parameters;

    iput-object p6, p0, Lio/ktor/http/Url;->fragment:Ljava/lang/String;

    iput-object p7, p0, Lio/ktor/http/Url;->user:Ljava/lang/String;

    iput-object p8, p0, Lio/ktor/http/Url;->password:Ljava/lang/String;

    iput-boolean p9, p0, Lio/ktor/http/Url;->trailingQuery:Z

    iput-object p10, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    if-ltz p3, :cond_0

    const/high16 p1, 0x10000

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 42
    :goto_0
    new-instance p1, Lio/ktor/http/Url$encodedPath$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedPath$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPath$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lio/ktor/http/Url$encodedQuery$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedQuery$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedQuery$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lio/ktor/http/Url$encodedPathAndQuery$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedPathAndQuery$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPathAndQuery$delegate:Lkotlin/Lazy;

    .line 79
    new-instance p1, Lio/ktor/http/Url$encodedUser$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedUser$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedUser$delegate:Lkotlin/Lazy;

    .line 87
    new-instance p1, Lio/ktor/http/Url$encodedPassword$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedPassword$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPassword$delegate:Lkotlin/Lazy;

    .line 95
    new-instance p1, Lio/ktor/http/Url$encodedFragment$2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$encodedFragment$2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedFragment$delegate:Lkotlin/Lazy;

    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "port must be between 0 and 65535, or 0 if not set"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getUrlString$p(Lio/ktor/http/Url;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/ktor/http/Url;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lio/ktor/http/Url;

    iget-object v2, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    .line 110
    iget-object p1, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getEncodedFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->encodedFragment$delegate:Lkotlin/Lazy;

    .line 95
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->encodedPassword$delegate:Lkotlin/Lazy;

    .line 87
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->encodedPath$delegate:Lkotlin/Lazy;

    .line 42
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->encodedQuery$delegate:Lkotlin/Lazy;

    .line 57
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->encodedUser$delegate:Lkotlin/Lazy;

    .line 79
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPathSegments()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final getPort()I
    .locals 2

    iget v0, p0, Lio/ktor/http/Url;->specifiedPort:I

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getProtocol()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    return-object v0
.end method

.method public final getSpecifiedPort()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/http/Url;->specifiedPort:I

    return v0
.end method

.method public final getTrailingQuery()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/http/Url;->trailingQuery:Z

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    return-object v0
.end method
