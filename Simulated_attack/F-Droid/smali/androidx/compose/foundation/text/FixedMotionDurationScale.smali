.class final Landroidx/compose/foundation/text/FixedMotionDurationScale;
.super Ljava/lang/Object;
.source "TextFieldCursor.kt"

# interfaces
.implements Landroidx/compose/ui/MotionDurationScale;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/FixedMotionDurationScale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/FixedMotionDurationScale;

    invoke-direct {v0}, Landroidx/compose/foundation/text/FixedMotionDurationScale;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/FixedMotionDurationScale;->INSTANCE:Landroidx/compose/foundation/text/FixedMotionDurationScale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->fold(Landroidx/compose/ui/MotionDurationScale;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    .line 96
    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->get(Landroidx/compose/ui/MotionDurationScale;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/MotionDurationScale$-CC;->$default$getKey(Landroidx/compose/ui/MotionDurationScale;)Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 96
    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->minusKey(Landroidx/compose/ui/MotionDurationScale;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 96
    invoke-static {p0, p1}, Landroidx/compose/ui/MotionDurationScale$DefaultImpls;->plus(Landroidx/compose/ui/MotionDurationScale;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method
