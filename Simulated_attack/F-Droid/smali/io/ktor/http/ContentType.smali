.class public final Lio/ktor/http/ContentType;
.super Lio/ktor/http/HeaderValueWithParameters;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/ContentType$Application;,
        Lio/ktor/http/ContentType$Companion;,
        Lio/ktor/http/ContentType$Text;
    }
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/ContentType;

.field public static final Companion:Lio/ktor/http/ContentType$Companion;


# instance fields
.field private final contentSubtype:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/ktor/http/ContentType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/ContentType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    .line 149
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v3, "*"

    const-string v4, "*"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType;->Any:Lio/ktor/http/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 19
    invoke-direct {p0, p3, p4}, Lio/ktor/http/HeaderValueWithParameters;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentSubtype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, p2, v0, p3}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAny$cp()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/ContentType;->Any:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method private final hasParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 41
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 44
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 1747
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1748
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/HeaderValueParam;

    .line 44
    invoke-virtual {v3}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HeaderValueParam;

    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 98
    instance-of v0, p1, Lio/ktor/http/ContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    .line 99
    check-cast p1, Lio/ktor/http/ContentType;

    iget-object v1, p1, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    .line 100
    iget-object v1, p1, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    .line 104
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 106
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final withParameter(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/ContentType;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lio/ktor/http/ContentType;->hasParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lio/ktor/http/ContentType;

    iget-object v1, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    iget-object v2, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lio/ktor/http/HeaderValueParam;

    invoke-direct {v5, p1, p2}, Lio/ktor/http/HeaderValueParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
