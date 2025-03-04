.class Lorg/fdroid/fdroid/views/categories/CategoryController$2;
.super Ljava/lang/Object;
.source "CategoryController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/categories/CategoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/categories/CategoryController;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 167
    invoke-static {p1}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetcurrentCategory(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/database/Category;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    invoke-static {v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetactivity(Lorg/fdroid/fdroid/views/categories/CategoryController;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-class v1, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 172
    invoke-static {v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetcurrentCategory(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/database/Category;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/database/Category;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 173
    invoke-static {v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetcurrentCategory(Lorg/fdroid/fdroid/views/categories/CategoryController;)Lorg/fdroid/database/Category;

    move-result-object v0

    .line 174
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/RepoAttribute;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.views.apps.AppListActivity.EXTRA_CATEGORY_NAME"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/categories/CategoryController$2;->this$0:Lorg/fdroid/fdroid/views/categories/CategoryController;

    .line 175
    invoke-static {v0}, Lorg/fdroid/fdroid/views/categories/CategoryController;->-$$Nest$fgetactivity(Lorg/fdroid/fdroid/views/categories/CategoryController;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
