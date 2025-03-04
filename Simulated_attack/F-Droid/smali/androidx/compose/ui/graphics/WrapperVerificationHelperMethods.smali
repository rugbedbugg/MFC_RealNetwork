.class public final Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;
.super Ljava/lang/Object;
.source "AndroidPaint.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setBlendMode-GB0RdKg(Landroid/graphics/Paint;I)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidBlendMode_androidKt;->toAndroidBlendMode-s9anfk8(I)Landroid/graphics/BlendMode;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    return-void
.end method
