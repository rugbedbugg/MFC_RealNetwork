.class public final synthetic Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Landroidx/core/os/LocaleListCompat;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;->f$1:Landroidx/core/os/LocaleListCompat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda0;->f$1:Landroidx/core/os/LocaleListCompat;

    check-cast p1, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    check-cast p2, Lorg/fdroid/fdroid/views/categories/CategoryItem;

    invoke-static {v0, v1, p1, p2}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->$r8$lambda$DYFVIuY4lic-jwUOR9QKYAsSyzw(Landroid/util/ArraySet;Landroidx/core/os/LocaleListCompat;Lorg/fdroid/fdroid/views/categories/CategoryItem;Lorg/fdroid/fdroid/views/categories/CategoryItem;)I

    move-result p1

    return p1
.end method
