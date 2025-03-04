.class public Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;
.super Ljava/lang/Object;
.source "LatestLayoutPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 2

    .line 20
    new-instance v0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy$ItemDecorator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 24
    rem-int/lit8 v0, p1, 0x5

    if-nez p1, :cond_0

    sget p1, Lorg/fdroid/fdroid/R$id;->latest_regular_list:I

    return p1

    :cond_0
    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    sget p1, Lorg/fdroid/fdroid/R$id;->latest_regular_list:I

    return p1

    :cond_1
    sget p1, Lorg/fdroid/fdroid/R$id;->latest_small_tile:I

    return p1

    :cond_2
    sget p1, Lorg/fdroid/fdroid/R$id;->latest_large_tile:I

    return p1
.end method

.method public getSpanSize(I)I
    .locals 0

    .line 46
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
