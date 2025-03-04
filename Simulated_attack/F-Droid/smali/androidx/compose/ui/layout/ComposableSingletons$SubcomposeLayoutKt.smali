.class public final Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt$lambda-1$1;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt$lambda-1$1;

    const v2, -0x67cddd26

    .line 680
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$ui_release()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
