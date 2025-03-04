.class Lorg/fdroid/fdroid/views/categories/CategoryAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/categories/CategoryAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/fdroid/database/FDroidDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    check-cast p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter$1;->areContentsTheSame(Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    check-cast p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/categories/CategoryAdapter$1;->areItemsTheSame(Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)Z
    .locals 0

    .line 29
    iget-object p1, p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    iget-object p2, p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    invoke-virtual {p1, p2}, Lorg/fdroid/database/Category;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
