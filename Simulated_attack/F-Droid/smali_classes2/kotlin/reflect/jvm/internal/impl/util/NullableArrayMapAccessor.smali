.class public final Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor;
.super Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner$AbstractArrayMapAccessor;
.source "ArrayMapOwner.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner$AbstractArrayMapAccessor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor;->getValue(Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner$AbstractArrayMapAccessor;->extractValue(Lkotlin/reflect/jvm/internal/impl/util/AbstractArrayMapOwner;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
