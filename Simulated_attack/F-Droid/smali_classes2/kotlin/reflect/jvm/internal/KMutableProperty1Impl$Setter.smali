.class public final Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setter"
.end annotation


# instance fields
.field private final property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-void
.end method


# virtual methods
.method public bridge synthetic getProperty()Lkotlin/reflect/KProperty;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-object v0
.end method

.method public bridge synthetic getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
