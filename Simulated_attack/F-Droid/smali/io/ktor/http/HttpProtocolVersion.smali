.class public final Lio/ktor/http/HttpProtocolVersion;
.super Ljava/lang/Object;
.source "HttpProtocolVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HttpProtocolVersion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

.field private static final HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

.field private static final HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

.field private static final HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

.field private static final QUIC:Lio/ktor/http/HttpProtocolVersion;

.field private static final SPDY_3:Lio/ktor/http/HttpProtocolVersion;


# instance fields
.field private final major:I

.field private final minor:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/ktor/http/HttpProtocolVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HttpProtocolVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    .line 19
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

    .line 24
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

    .line 29
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

    .line 34
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "SPDY"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->SPDY_3:Lio/ktor/http/HttpProtocolVersion;

    .line 39
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "QUIC"

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->QUIC:Lio/ktor/http/HttpProtocolVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    iput p2, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    iput p3, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    return-void
.end method

.method public static final synthetic access$getHTTP_1_0$cp()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_1_1$cp()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_2_0$cp()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getQUIC$cp()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->QUIC:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getSPDY_3$cp()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->SPDY_3:Lio/ktor/http/HttpProtocolVersion;

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
    instance-of v1, p1, Lio/ktor/http/HttpProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/http/HttpProtocolVersion;

    iget-object v1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    iget v3, p1, Lio/ktor/http/HttpProtocolVersion;->major:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    iget p1, p1, Lio/ktor/http/HttpProtocolVersion;->minor:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
