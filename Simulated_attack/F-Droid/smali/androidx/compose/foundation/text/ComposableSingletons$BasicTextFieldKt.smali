.class public final Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;
.super Ljava/lang/Object;
.source "BasicTextField.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function3;

.field public static lambda-2:Lkotlin/jvm/functions/Function3;

.field public static lambda-3:Lkotlin/jvm/functions/Function3;

.field public static lambda-4:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-direct {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-1$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-1$1;

    const v1, 0x3b79c49c

    const/4 v2, 0x0

    .line 140
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    const v0, 0x7d8127ef

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-2$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-2$1;

    .line 286
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    const v0, 0x19e074df

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-3$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-3$1;

    .line 330
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-3:Lkotlin/jvm/functions/Function3;

    const v0, -0x213864e

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-4$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt$lambda-4$1;

    .line 370
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-4:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-2$foundation_release()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
