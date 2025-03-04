.class public final Lorg/fdroid/fdroid/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static SwapView:[I = null

.field public static SwapView_toolbarColor:I = 0x0

.field public static SwapView_toolbarTitle:I = 0x1

.field public static Theme:[I = null

.field public static Theme_antiFeaturesWarning:I = 0x0

.field public static Theme_appDetailsAntiFeatureIconColor:I = 0x1

.field public static Theme_appDetailsBackground:I = 0x2

.field public static Theme_appDetailsCardBackground:I = 0x3

.field public static Theme_appListItem:I = 0x4

.field public static Theme_backButtonDrawable:I = 0x5

.field public static Theme_categoryName:I = 0x6

.field public static Theme_categoryPreviewAppCardBackground:I = 0x7

.field public static Theme_clearButtonDrawable:I = 0x8

.field public static Theme_detailPanel:I = 0x9

.field public static Theme_iconBackgroundColor:I = 0xa

.field public static Theme_installedApps:I = 0xb

.field public static Theme_lightGrayTextColor:I = 0xc

.field public static Theme_mainTabSwapBackground:I = 0xd

.field public static Theme_mainTabSwapSplashTint:I = 0xe

.field public static Theme_screenshotPlaceholderIconColor:I = 0xf


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    const v0, 0x7f0404f5

    const v1, 0x7f0404fa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/R$styleable;->SwapView:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/fdroid/fdroid/R$styleable;->Theme:[I

    return-void

    :array_0
    .array-data 4
        0x7f04003e
        0x7f040040
        0x7f040041
        0x7f040042
        0x7f040043
        0x7f040053
        0x7f0400bb
        0x7f0400bc
        0x7f0400ea
        0x7f04018f
        0x7f04024d
        0x7f040268
        0x7f0402ea
        0x7f040302
        0x7f040303
        0x7f0403ef
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
