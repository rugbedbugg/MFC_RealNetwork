.class public final Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerIconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->getDefault()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-void
.end method


# virtual methods
.method public setIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1766
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->getDefault()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1768
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->setPointerIcon(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V

    :cond_1
    return-void
.end method
