.class public final Landroidx/compose/ui/text/intl/AndroidLocale;
.super Ljava/lang/Object;
.source "AndroidLocaleDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocale;


# instance fields
.field private final javaLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "javaLocale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final getJavaLocale()Ljava/util/Locale;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/intl/AndroidLocale;->javaLocale:Ljava/util/Locale;

    .line 37
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaLocale.toLanguageTag()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
