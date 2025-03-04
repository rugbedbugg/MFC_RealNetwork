.class abstract Landroidx/core/os/LocaleListCompatWrapper$Api21Impl;
.super Ljava/lang/Object;
.source "LocaleListCompatWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompatWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method static getScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 282
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
