.class final Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InteractiveComponentSize.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/InteractiveComponentSizeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;

    invoke-direct {v0}, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;-><init>()V

    sput-object v0, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;->INSTANCE:Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
