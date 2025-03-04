.class public final Lio/ktor/http/EmptyParameters;
.super Ljava/lang/Object;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/http/Parameters;


# static fields
.field public static final INSTANCE:Lio/ktor/http/EmptyParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/http/EmptyParameters;

    invoke-direct {v0}, Lio/ktor/http/EmptyParameters;-><init>()V

    sput-object v0, Lio/ktor/http/EmptyParameters;->INSTANCE:Lio/ktor/http/EmptyParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entries()Ljava/util/Set;
    .locals 1

    .line 110
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 114
    instance-of v0, p1, Lio/ktor/http/Parameters;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/http/Parameters;

    invoke-interface {p1}, Lio/ktor/util/StringValues;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lio/ktor/http/Parameters$DefaultImpls;->forEach(Lio/ktor/http/Parameters;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCaseInsensitiveName()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public names()Ljava/util/Set;
    .locals 1

    .line 109
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/http/EmptyParameters;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
