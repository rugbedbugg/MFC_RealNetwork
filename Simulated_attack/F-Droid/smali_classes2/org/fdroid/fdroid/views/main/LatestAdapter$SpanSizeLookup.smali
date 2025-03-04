.class final Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "LatestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/main/LatestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private final layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;


# direct methods
.method private constructor <init>(Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;->layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;-><init>(Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestAdapter$SpanSizeLookup;->layoutPolicy:Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;

    .line 97
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/main/LatestLayoutPolicy;->getSpanSize(I)I

    move-result p1

    return p1
.end method
