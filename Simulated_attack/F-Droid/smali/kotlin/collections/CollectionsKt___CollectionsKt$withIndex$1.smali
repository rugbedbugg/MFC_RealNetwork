.class final Lkotlin/collections/CollectionsKt___CollectionsKt$withIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_Collections.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_withIndex:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/collections/CollectionsKt___CollectionsKt$withIndex$1;->$this_withIndex:Ljava/lang/Iterable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1630
    invoke-virtual {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$withIndex$1;->invoke()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/CollectionsKt___CollectionsKt$withIndex$1;->$this_withIndex:Ljava/lang/Iterable;

    .line 1630
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
