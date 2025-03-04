.class public final Lkotlinx/serialization/json/JsonLiteral;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "JsonElement.kt"


# instance fields
.field private final content:Ljava/lang/String;

.field private final isString:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lkotlinx/serialization/json/JsonLiteral;

    .line 93
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    check-cast p1, Lkotlinx/serialization/json/JsonLiteral;

    .line 95
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v2

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 96
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isString()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonLiteral;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
