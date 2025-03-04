.class public final Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty0$Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KProperty0Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Getter"
.end annotation


# instance fields
.field private final property:Lkotlin/reflect/jvm/internal/KProperty0Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->property:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-void
.end method


# virtual methods
.method public bridge synthetic getProperty()Lkotlin/reflect/KProperty;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->getProperty()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Lkotlin/reflect/jvm/internal/KProperty0Impl;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->property:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    return-object v0
.end method

.method public bridge synthetic getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->getProperty()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;->getProperty()Lkotlin/reflect/jvm/internal/KProperty0Impl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KProperty0Impl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
