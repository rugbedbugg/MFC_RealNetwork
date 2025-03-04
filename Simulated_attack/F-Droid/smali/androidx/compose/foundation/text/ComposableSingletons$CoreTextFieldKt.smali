.class public final Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;
.super Ljava/lang/Object;
.source "CoreTextField.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

    invoke-direct {v0}, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt$lambda-1$1;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt$lambda-1$1;

    const v2, 0x2803267d

    .line 204
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$foundation_release()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
