.class public final Lorg/fdroid/download/MirrorKt;
.super Ljava/lang/Object;
.source "Mirror.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0003H\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "isLocal",
        "",
        "Lio/ktor/http/Url;",
        "Lorg/fdroid/download/Mirror;",
        "isOnion",
        "download_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isLocal(Lio/ktor/http/Url;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[0-9.]{7,15}"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "172."

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-direct {v0, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 62
    invoke-static {p0, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    new-array v3, v2, [C

    aput-char v0, v3, v1

    .line 63
    invoke-static {p0, v3}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-gt v0, p0, :cond_2

    const/16 v0, 0x20

    if-ge p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 66
    :cond_3
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v5, "169.254."

    invoke-static {v0, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v5, "10."

    invoke-static {v0, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v5, "192.168."

    invoke-static {v0, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "127.0.0.1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public static final isLocal(Lorg/fdroid/download/Mirror;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror;->isLocal()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static final isOnion(Lio/ktor/http/Url;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lio/ktor/http/Url;->getHost()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ".onion"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
