.class abstract Lkotlin/LazyKt__LazyKt;
.super Lkotlin/LazyKt__LazyJVMKt;
.source "Lazy.kt"


# direct methods
.method public static lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    .line 35
    new-instance v0, Lkotlin/InitializedLazyImpl;

    invoke-direct {v0, p0}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
