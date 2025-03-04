.class final Lorg/acra/collections/WeakStack$WeakIterator;
.super Ljava/lang/Object;
.source "WeakStack.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collections/WeakStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakIterator"
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private next:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/collections/WeakStack$WeakIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->iterator:Ljava/util/Iterator;

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->iterator:Ljava/util/Iterator;

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->next:Ljava/lang/Object;

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/acra/collections/WeakStack$WeakIterator;->next:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->iterator:Ljava/util/Iterator;

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/acra/collections/WeakStack$WeakIterator;->iterator:Ljava/util/Iterator;

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
