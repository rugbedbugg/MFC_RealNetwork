.class final Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;
.super Ljava/lang/Object;
.source "SmartSet.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonIterator"
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;

.field private hasNext:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->element:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->hasNext:Z

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->element:Ljava/lang/Object;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()Ljava/lang/Void;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$SingletonIterator;->remove()Ljava/lang/Void;

    return-void
.end method
