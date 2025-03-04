.class public abstract Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;
.super Ljava/lang/Object;
.source "AndroidPlatformLocale.android.kt"


# direct methods
.method public static final createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 23
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;-><init>()V

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;

    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;-><init>()V

    :goto_0
    return-object v0
.end method
