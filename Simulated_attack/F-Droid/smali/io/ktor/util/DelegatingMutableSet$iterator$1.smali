.class public final Lio/ktor/util/DelegatingMutableSet$iterator$1;
.super Ljava/lang/Object;
.source "DelegatingMutableSet.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/DelegatingMutableSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final delegateIterator:Ljava/util/Iterator;

.field final synthetic this$0:Lio/ktor/util/DelegatingMutableSet;


# direct methods
.method constructor <init>(Lio/ktor/util/DelegatingMutableSet;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->this$0:Lio/ktor/util/DelegatingMutableSet;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lio/ktor/util/DelegatingMutableSet;->access$getDelegate$p(Lio/ktor/util/DelegatingMutableSet;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->this$0:Lio/ktor/util/DelegatingMutableSet;

    .line 43
    invoke-static {v0}, Lio/ktor/util/DelegatingMutableSet;->access$getConvertTo$p(Lio/ktor/util/DelegatingMutableSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
