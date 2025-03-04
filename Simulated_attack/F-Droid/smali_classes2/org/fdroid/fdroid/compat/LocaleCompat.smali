.class public Lorg/fdroid/fdroid/compat/LocaleCompat;
.super Ljava/lang/Object;
.source "LocaleCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 13
    invoke-static {}, Lorg/fdroid/fdroid/compat/LocaleCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Locale$Category;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
