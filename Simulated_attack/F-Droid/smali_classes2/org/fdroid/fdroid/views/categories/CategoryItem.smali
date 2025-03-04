.class public Lorg/fdroid/fdroid/views/categories/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# instance fields
.field public final category:Lorg/fdroid/database/Category;

.field final numApps:I


# direct methods
.method public constructor <init>(Lorg/fdroid/database/Category;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/categories/CategoryItem;->category:Lorg/fdroid/database/Category;

    iput p2, p0, Lorg/fdroid/fdroid/views/categories/CategoryItem;->numApps:I

    return-void
.end method
