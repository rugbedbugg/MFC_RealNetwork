.class public final Lio/ktor/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "Text.kt"


# instance fields
.field private final content:Ljava/lang/String;

.field private final hash:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    .line 106
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lio/ktor/util/CaseInsensitiveString;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 109
    instance-of v0, p1, Lio/ktor/util/CaseInsensitiveString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/util/CaseInsensitiveString;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/util/CaseInsensitiveString;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    return-object v0
.end method
