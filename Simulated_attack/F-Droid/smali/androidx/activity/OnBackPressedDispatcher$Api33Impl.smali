.class public final Landroidx/activity/OnBackPressedDispatcher$Api33Impl;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api33Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/activity/OnBackPressedDispatcher$Api33Impl;


# direct methods
.method public static synthetic $r8$lambda$tzBBo0FLedRCWSI6_icF8qhF74s(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->createOnBackInvokedCallback$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;

    invoke-direct {v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;-><init>()V

    sput-object v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->INSTANCE:Landroidx/activity/OnBackPressedDispatcher$Api33Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createOnBackInvokedCallback$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$onBackInvoked"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createOnBackInvokedCallback(Lkotlin/jvm/functions/Function0;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string v0, "onBackInvoked"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    .line 356
    check-cast p3, Landroid/window/OnBackInvokedCallback;

    .line 357
    invoke-interface {p1, p2, p3}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    .line 363
    check-cast p2, Landroid/window/OnBackInvokedCallback;

    .line 364
    invoke-interface {p1, p2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
