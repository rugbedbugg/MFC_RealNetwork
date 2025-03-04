.class public Lkotlin/reflect/jvm/internal/KProperty0Impl;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;
    }
.end annotation


# instance fields
.field private final _getter:Lkotlin/Lazy;

.field private final delegateValue:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->_getter:Lkotlin/Lazy;

    .line 37
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl$delegateValue$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$delegateValue$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->delegateValue:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->_getter:Lkotlin/Lazy;

    .line 37
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl$delegateValue$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$delegateValue$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->delegateValue:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty0$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;->_getter:Lkotlin/Lazy;

    .line 33
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
