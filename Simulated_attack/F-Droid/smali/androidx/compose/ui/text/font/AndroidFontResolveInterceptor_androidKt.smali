.class public abstract Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor_androidKt;
.super Ljava/lang/Object;
.source "AndroidFontResolveInterceptor.android.kt"


# direct methods
.method public static final AndroidFontResolveInterceptor(Landroid/content/Context;)Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 60
    :goto_0
    new-instance v0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    return-object v0
.end method
