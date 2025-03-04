.class public final Landroidx/compose/material/ProgressIndicatorDefaults;
.super Ljava/lang/Object;
.source "ProgressIndicator.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

.field private static final ProgressAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

.field private static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material/ProgressIndicatorDefaults;

    invoke-direct {v0}, Landroidx/compose/material/ProgressIndicatorDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material/ProgressIndicatorDefaults;->StrokeWidth:F

    .line 483
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    const v1, 0x3a83126f    # 0.001f

    .line 488
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42480000    # 50.0f

    .line 483
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    sput-object v0, Landroidx/compose/material/ProgressIndicatorDefaults;->ProgressAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStrokeWidth-D9Ej5fM()F
    .locals 1

    .line 0
    sget v0, Landroidx/compose/material/ProgressIndicatorDefaults;->StrokeWidth:F

    return v0
.end method
