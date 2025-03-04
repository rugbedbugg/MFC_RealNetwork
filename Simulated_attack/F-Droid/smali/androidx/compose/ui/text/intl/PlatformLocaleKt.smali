.class public abstract Landroidx/compose/ui/text/intl/PlatformLocaleKt;
.super Ljava/lang/Object;
.source "PlatformLocale.kt"


# static fields
.field private static final platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;->createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    return-void
.end method

.method public static final getPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    return-object v0
.end method
