.class public final Landroidx/compose/material/AppBarDefaults;
.super Ljava/lang/Object;
.source "AppBar.kt"


# static fields
.field private static final BottomAppBarElevation:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material/AppBarDefaults;

.field private static final TopAppBarElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/material/AppBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material/AppBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/AppBarDefaults;->TopAppBarElevation:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/AppBarDefaults;->BottomAppBarElevation:F

    .line 261
    invoke-static {}, Landroidx/compose/material/AppBarKt;->access$getAppBarHorizontalPadding$p()F

    move-result v1

    const/4 v2, 0x0

    .line 262
    invoke-static {}, Landroidx/compose/material/AppBarKt;->access$getAppBarHorizontalPadding$p()F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 260
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/AppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/AppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public final getTopAppBarElevation-D9Ej5fM()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/AppBarDefaults;->TopAppBarElevation:F

    return v0
.end method
