.class public final Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;
.super Ljava/lang/Object;
.source "LocaleExtensions.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final localeSpan(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;
    .locals 2

    const-string v0, "localeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 40
    invoke-static {v1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/Locale;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 40
    check-cast p1, [Ljava/util/Locale;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods$$ExternalSyntheticApiModelOutline1;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    move-result-object p1

    return-object p1
.end method

.method public final setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 2

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 47
    invoke-static {v1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/Locale;

    .line 38
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 47
    check-cast p2, [Ljava/util/Locale;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Locale;

    .line 46
    invoke-static {p2}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods$$ExternalSyntheticApiModelOutline1;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods$$ExternalSyntheticApiModelOutline0;->m(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroid/os/LocaleList;)V

    return-void
.end method
