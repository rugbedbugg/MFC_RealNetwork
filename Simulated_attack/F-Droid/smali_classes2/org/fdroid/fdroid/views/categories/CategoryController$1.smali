.class Lorg/fdroid/fdroid/views/categories/CategoryController$1;
.super Ljava/lang/Object;
.source "CategoryController.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/categories/CategoryController;->loadAppItems(Landroidx/lifecycle/LiveData;)V
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
.field final synthetic this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

.field final synthetic val$liveData:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/categories/CategoryController;Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 124
    invoke-static {v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetappCardsAdapter(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/categories/AppPreviewAdapter;->setAppCursor(Ljava/util/List;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 126
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
