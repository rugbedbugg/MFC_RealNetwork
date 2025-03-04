.class public abstract Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;
.super Ljava/lang/Object;
.source "LocaleExtensions.android.kt"


# direct methods
.method public static final toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->getPlatformLocale$ui_text_release()Landroidx/compose/ui/text/intl/PlatformLocale;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.text.intl.AndroidLocale"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method
