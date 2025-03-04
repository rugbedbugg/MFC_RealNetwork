.class abstract Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversionsJVM.kt"


# direct methods
.method public static toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 266
    :try_start_0
    sget-object v1, Lkotlin/text/ScreenFloatValueRegEx;->value:Lkotlin/text/Regex;

    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
