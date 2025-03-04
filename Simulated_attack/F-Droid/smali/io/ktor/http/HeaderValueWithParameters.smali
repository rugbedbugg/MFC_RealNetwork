.class public abstract Lio/ktor/http/HeaderValueWithParameters;
.super Ljava/lang/Object;
.source "HeaderValueWithParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HeaderValueWithParameters$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/HeaderValueWithParameters$Companion;


# instance fields
.field private final content:Ljava/lang/String;

.field private final parameters:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/http/HeaderValueWithParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HeaderValueWithParameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HeaderValueWithParameters;->Companion:Lio/ktor/http/HeaderValueWithParameters$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HeaderValueWithParameters;->content:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final getContent()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public final parameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/HeaderValueParam;

    .line 32
    invoke-virtual {v2}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v2}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->content:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->content:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/http/HeaderValueParam;

    invoke-virtual {v4}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->content:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_3

    :goto_1
    iget-object v3, p0, Lio/ktor/http/HeaderValueWithParameters;->parameters:Ljava/util/List;

    .line 48
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/HeaderValueParam;

    const-string v4, "; "

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v3}, Lio/ktor/http/HeaderValueWithParametersKt;->access$needQuotes(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lio/ktor/http/HeaderValueWithParametersKt;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-eq v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n            val size =\u2026   }.toString()\n        }"

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method
