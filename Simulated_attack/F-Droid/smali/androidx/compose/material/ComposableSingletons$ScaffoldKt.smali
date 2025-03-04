.class public final Landroidx/compose/material/ComposableSingletons$ScaffoldKt;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function2;

.field public static lambda-2:Lkotlin/jvm/functions/Function2;

.field public static lambda-3:Lkotlin/jvm/functions/Function3;

.field public static lambda-4:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-direct {v0}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;-><init>()V

    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-1$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-1$1;

    const v1, 0x7b58a0cd

    const/4 v2, 0x0

    .line 162
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    const v0, -0xdd1c243

    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-2$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-2$1;

    .line 163
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    const v0, -0x8cd8a30

    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-3$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-3$1;

    .line 164
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-3:Lkotlin/jvm/functions/Function3;

    const v0, -0x35af2423

    sget-object v1, Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-4$1;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt$lambda-4$1;

    .line 165
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-4:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getLambda-2$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getLambda-3$material_release()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-3:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getLambda-4$material_release()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->lambda-4:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
