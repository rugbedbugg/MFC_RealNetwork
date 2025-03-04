.class public final Landroidx/compose/ui/platform/AndroidFontResourceLoader;
.super Ljava/lang/Object;
.source "AndroidFontResourceLoader.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font$ResourceLoader;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->context:Landroid/content/Context;

    return-void
.end method
