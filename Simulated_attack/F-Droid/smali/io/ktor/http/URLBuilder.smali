.class public final Lio/ktor/http/URLBuilder;
.super Ljava/lang/Object;
.source "URLBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/URLBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/URLBuilder$Companion;

.field private static final originUrl:Lio/ktor/http/Url;


# instance fields
.field private encodedFragment:Ljava/lang/String;

.field private encodedParameters:Lio/ktor/http/ParametersBuilder;

.field private encodedPassword:Ljava/lang/String;

.field private encodedPathSegments:Ljava/util/List;

.field private encodedUser:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private parameters:Lio/ktor/http/ParametersBuilder;

.field private port:I

.field private protocol:Lio/ktor/http/URLProtocol;

.field private trailingQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/http/URLBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/URLBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    .line 116
    invoke-static {v0}, Lio/ktor/http/URLBuilderJvmKt;->getOrigin(Lio/ktor/http/URLBuilder$Companion;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/http/URLUtilsKt;->Url(Ljava/lang/String;)Lio/ktor/http/Url;

    move-result-object v0

    sput-object v0, Lio/ktor/http/URLBuilder;->originUrl:Lio/ktor/http/Url;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    iput-object p2, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    iput p3, p0, Lio/ktor/http/URLBuilder;->port:I

    iput-boolean p9, p0, Lio/ktor/http/URLBuilder;->trailingQuery:Z

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    .line 36
    invoke-static {p4, p2, p1, p3}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    iput-object p4, p0, Lio/ktor/http/URLBuilder;->encodedUser:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 44
    invoke-static {p5, p2, p1, p3}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lio/ktor/http/URLBuilder;->encodedPassword:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p8

    .line 51
    invoke-static/range {v0 .. v5}, Lio/ktor/http/CodecsKt;->encodeURLQueryComponent$default(Ljava/lang/String;ZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedFragment:Ljava/lang/String;

    .line 1549
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p6, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1621
    check-cast p3, Ljava/lang/String;

    .line 58
    invoke-static {p3}, Lio/ktor/http/CodecsKt;->encodeURLPathPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1621
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedPathSegments:Ljava/util/List;

    .line 66
    invoke-static {p7}, Lio/ktor/http/UrlDecodedParametersBuilderKt;->encodeParameters(Lio/ktor/util/StringValues;)Lio/ktor/http/ParametersBuilder;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedParameters:Lio/ktor/http/ParametersBuilder;

    .line 72
    new-instance p2, Lio/ktor/http/UrlDecodedParametersBuilder;

    invoke-direct {p2, p1}, Lio/ktor/http/UrlDecodedParametersBuilder;-><init>(Lio/ktor/http/ParametersBuilder;)V

    iput-object p2, p0, Lio/ktor/http/URLBuilder;->parameters:Lio/ktor/http/ParametersBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol$Companion;->getHTTP()Lio/ktor/http/URLProtocol;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 32
    sget-object v9, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {v9}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v3, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v5, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move/from16 p10, v5

    .line 25
    invoke-direct/range {p1 .. p10}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;Z)V

    return-void
.end method

.method private final applyOrigin()V
    .locals 3

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    .line 108
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lio/ktor/http/URLBuilder;->originUrl:Lio/ktor/http/Url;

    .line 109
    invoke-virtual {v0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    .line 110
    sget-object v2, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol$Companion;->getHTTP()Lio/ktor/http/URLProtocol;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    :cond_2
    iget v1, p0, Lio/ktor/http/URLBuilder;->port:I

    if-nez v1, :cond_3

    .line 111
    invoke-virtual {v0}, Lio/ktor/http/Url;->getSpecifiedPort()I

    move-result v0

    iput v0, p0, Lio/ktor/http/URLBuilder;->port:I

    :cond_3
    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/http/Url;
    .locals 12

    .line 92
    invoke-direct {p0}, Lio/ktor/http/URLBuilder;->applyOrigin()V

    .line 93
    new-instance v11, Lio/ktor/http/Url;

    iget-object v1, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    iget-object v2, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    iget v3, p0, Lio/ktor/http/URLBuilder;->port:I

    .line 97
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->getPathSegments()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->parameters:Lio/ktor/http/ParametersBuilder;

    .line 98
    invoke-interface {v0}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v5

    .line 99
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->getFragment()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->getPassword()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lio/ktor/http/URLBuilder;->trailingQuery:Z

    .line 103
    invoke-virtual {p0}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    .line 93
    invoke-direct/range {v0 .. v10}, Lio/ktor/http/Url;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v11
.end method

.method public final buildString()Ljava/lang/String;
    .locals 2

    .line 80
    invoke-direct {p0}, Lio/ktor/http/URLBuilder;->applyOrigin()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lio/ktor/http/URLBuilderKt;->access$appendTo(Lio/ktor/http/URLBuilder;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appendTo(StringBuilder(256)).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEncodedFragment()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedParameters()Lio/ktor/http/ParametersBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedParameters:Lio/ktor/http/ParametersBuilder;

    return-object v0
.end method

.method public final getEncodedPassword()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedPathSegments()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedPathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final getEncodedUser()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getFragment()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedFragment:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 53
    invoke-static/range {v0 .. v6}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameters()Lio/ktor/http/ParametersBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->parameters:Lio/ktor/http/ParametersBuilder;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPathSegments()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedPathSegments:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 61
    invoke-static/range {v3 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getPort()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/http/URLBuilder;->port:I

    return v0
.end method

.method public final getProtocol()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    return-object v0
.end method

.method public final getTrailingQuery()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/http/URLBuilder;->trailingQuery:Z

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ktor/http/URLBuilder;->encodedUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 39
    invoke-static/range {v0 .. v5}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final setEncodedFragment(Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedFragment:Ljava/lang/String;

    return-void
.end method

.method public final setEncodedParameters(Lio/ktor/http/ParametersBuilder;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedParameters:Lio/ktor/http/ParametersBuilder;

    .line 69
    new-instance v0, Lio/ktor/http/UrlDecodedParametersBuilder;

    invoke-direct {v0, p1}, Lio/ktor/http/UrlDecodedParametersBuilder;-><init>(Lio/ktor/http/ParametersBuilder;)V

    iput-object v0, p0, Lio/ktor/http/URLBuilder;->parameters:Lio/ktor/http/ParametersBuilder;

    return-void
.end method

.method public final setEncodedPassword(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedPassword:Ljava/lang/String;

    return-void
.end method

.method public final setEncodedPathSegments(Ljava/util/List;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedPathSegments:Ljava/util/List;

    return-void
.end method

.method public final setEncodedUser(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/http/URLBuilder;->encodedUser:Ljava/lang/String;

    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->host:Ljava/lang/String;

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 0
    iput p1, p0, Lio/ktor/http/URLBuilder;->port:I

    return-void
.end method

.method public final setProtocol(Lio/ktor/http/URLProtocol;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/URLBuilder;->protocol:Lio/ktor/http/URLProtocol;

    return-void
.end method

.method public final setTrailingQuery(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lio/ktor/http/URLBuilder;->trailingQuery:Z

    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-static {p1, v1, v2, v0}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lio/ktor/http/URLBuilder;->encodedUser:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lio/ktor/http/URLBuilderKt;->access$appendTo(Lio/ktor/http/URLBuilder;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appendTo(StringBuilder(256)).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
