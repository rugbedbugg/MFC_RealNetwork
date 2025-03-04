.class public final Lio/ktor/http/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HttpMethod$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/HttpMethod$Companion;

.field private static final DefaultMethods:Ljava/util/List;

.field private static final Delete:Lio/ktor/http/HttpMethod;

.field private static final Get:Lio/ktor/http/HttpMethod;

.field private static final Head:Lio/ktor/http/HttpMethod;

.field private static final Options:Lio/ktor/http/HttpMethod;

.field private static final Patch:Lio/ktor/http/HttpMethod;

.field private static final Post:Lio/ktor/http/HttpMethod;

.field private static final Put:Lio/ktor/http/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/ktor/http/HttpMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HttpMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    .line 14
    new-instance v0, Lio/ktor/http/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpMethod;->Get:Lio/ktor/http/HttpMethod;

    .line 15
    new-instance v1, Lio/ktor/http/HttpMethod;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/ktor/http/HttpMethod;->Post:Lio/ktor/http/HttpMethod;

    .line 16
    new-instance v2, Lio/ktor/http/HttpMethod;

    const-string v3, "PUT"

    invoke-direct {v2, v3}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/ktor/http/HttpMethod;->Put:Lio/ktor/http/HttpMethod;

    .line 19
    new-instance v3, Lio/ktor/http/HttpMethod;

    const-string v4, "PATCH"

    invoke-direct {v3, v4}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v3, Lio/ktor/http/HttpMethod;->Patch:Lio/ktor/http/HttpMethod;

    .line 20
    new-instance v4, Lio/ktor/http/HttpMethod;

    const-string v5, "DELETE"

    invoke-direct {v4, v5}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v4, Lio/ktor/http/HttpMethod;->Delete:Lio/ktor/http/HttpMethod;

    .line 21
    new-instance v5, Lio/ktor/http/HttpMethod;

    const-string v6, "HEAD"

    invoke-direct {v5, v6}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v5, Lio/ktor/http/HttpMethod;->Head:Lio/ktor/http/HttpMethod;

    .line 22
    new-instance v6, Lio/ktor/http/HttpMethod;

    const-string v7, "OPTIONS"

    invoke-direct {v6, v7}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v6, Lio/ktor/http/HttpMethod;->Options:Lio/ktor/http/HttpMethod;

    const/4 v7, 0x7

    new-array v7, v7, [Lio/ktor/http/HttpMethod;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 43
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpMethod;->DefaultMethods:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getGet$cp()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpMethod;->Get:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpMethod;->Head:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public static final synthetic access$getPost$cp()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/HttpMethod;->Post:Lio/ktor/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/http/HttpMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/http/HttpMethod;

    iget-object v1, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpMethod(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
