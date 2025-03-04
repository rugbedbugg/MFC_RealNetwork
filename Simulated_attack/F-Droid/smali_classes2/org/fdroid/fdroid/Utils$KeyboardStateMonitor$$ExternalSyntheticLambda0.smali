.class public final synthetic Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

    iput-object p2, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;

    iget-object v1, p0, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;->$r8$lambda$x707Bl2_KJ6C1oz664EU2y3mjfY(Lorg/fdroid/fdroid/Utils$KeyboardStateMonitor;Landroid/view/View;)V

    return-void
.end method
