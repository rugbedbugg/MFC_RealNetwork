.class public final synthetic Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;->f$0:Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;->$r8$lambda$8tsUQkbdSr8Y-FHvJFPz4BEp1zg(Lorg/fdroid/fdroid/views/main/CategoriesViewBinder;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
