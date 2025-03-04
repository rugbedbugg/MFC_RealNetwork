.class public final Lorg/fdroid/download/Mirror;
.super Ljava/lang/Object;
.source "Mirror.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/Mirror$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J)\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u0006J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lorg/fdroid/download/Mirror;",
        "",
        "baseUrl",
        "",
        "location",
        "isIpfsGateway",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "()Z",
        "getLocation",
        "url",
        "Lio/ktor/http/Url;",
        "getUrl",
        "()Lio/ktor/http/Url;",
        "url$delegate",
        "Lkotlin/Lazy;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "path",
        "hashCode",
        "",
        "isHttp",
        "isLocal",
        "isOnion",
        "toString",
        "Companion",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/fdroid/download/Mirror$Companion;


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final isIpfsGateway:Z

.field private final location:Ljava/lang/String;

.field private final url$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/download/Mirror$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/Mirror$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/Mirror;->Companion:Lorg/fdroid/download/Mirror$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 0
    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 0
    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    .line 18
    new-instance p1, Lorg/fdroid/download/Mirror$url$2;

    invoke-direct {p1, p0}, Lorg/fdroid/download/Mirror$url$2;-><init>(Lorg/fdroid/download/Mirror;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/Mirror;->url$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/download/Mirror;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/fdroid/download/Mirror;
    .locals 0

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/download/Mirror;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lorg/fdroid/download/Mirror;

    move-result-object p0

    return-object p0
.end method

.method public static final fromStrings(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/download/Mirror;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/download/Mirror;->Companion:Lorg/fdroid/download/Mirror$Companion;

    invoke-virtual {v0, p0}, Lorg/fdroid/download/Mirror$Companion;->fromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lorg/fdroid/download/Mirror;
    .locals 1

    .line 0
    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/download/Mirror;

    invoke-direct {v0, p1, p2, p3}, Lorg/fdroid/download/Mirror;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/download/Mirror;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/download/Mirror;

    iget-object v1, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    iget-boolean p1, p1, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Lio/ktor/http/Url;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/download/Mirror;->url$delegate:Lkotlin/Lazy;

    .line 18
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Url;

    return-object v0
.end method

.method public final getUrl(Ljava/lang/String;)Lio/ktor/http/Url;
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/http/URLUtilsKt;->URLBuilder(Lio/ktor/http/Url;)Lio/ktor/http/URLBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lio/ktor/http/URLBuilderKt;->appendPathSegments$default(Lio/ktor/http/URLBuilder;[Ljava/lang/String;ZILjava/lang/Object;)Lio/ktor/http/URLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isHttp()Z
    .locals 5

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "http"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isIpfsGateway()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    return v0
.end method

.method public final isLocal()Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/download/MirrorKt;->isLocal(Lio/ktor/http/Url;)Z

    move-result v0

    return v0
.end method

.method public final isOnion()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/download/MirrorKt;->isOnion(Lio/ktor/http/Url;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Mirror;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/download/Mirror;->location:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/fdroid/download/Mirror;->isIpfsGateway:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mirror(baseUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", location="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isIpfsGateway="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
