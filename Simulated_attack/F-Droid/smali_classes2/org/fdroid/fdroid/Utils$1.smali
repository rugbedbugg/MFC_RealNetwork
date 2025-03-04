.class Lorg/fdroid/fdroid/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/Utils;->observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic val$consumer:Landroidx/core/util/Consumer;

.field final synthetic val$liveData:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/core/util/Consumer;Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/Utils$1;->val$consumer:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lorg/fdroid/fdroid/Utils$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Utils$1;->val$consumer:Landroidx/core/util/Consumer;

    .line 850
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/Utils$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 851
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
