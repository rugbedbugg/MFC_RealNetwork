.class public final Landroidx/compose/ui/platform/TextToolbarHelperMethods;
.super Ljava/lang/Object;
.source "AndroidTextToolbar.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/TextToolbarHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/TextToolbarHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/platform/TextToolbarHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/TextToolbarHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/TextToolbarHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateContentRect(Landroid/view/ActionMode;)V
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    return-void
.end method

.method public final startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
