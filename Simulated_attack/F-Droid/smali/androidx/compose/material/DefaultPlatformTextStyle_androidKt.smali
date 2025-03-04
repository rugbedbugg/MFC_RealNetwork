.class public abstract Landroidx/compose/material/DefaultPlatformTextStyle_androidKt;
.super Ljava/lang/Object;
.source "DefaultPlatformTextStyle.android.kt"


# static fields
.field private static final DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroidx/compose/ui/text/PlatformTextStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Z)V

    sput-object v0, Landroidx/compose/material/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    return-void
.end method

.method public static final defaultPlatformTextStyle()Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    return-object v0
.end method
