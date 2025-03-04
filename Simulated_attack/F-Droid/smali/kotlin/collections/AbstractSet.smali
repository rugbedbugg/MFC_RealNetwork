.class public abstract Lkotlin/collections/AbstractSet;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractSet.kt"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractSet$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractSet$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/collections/AbstractSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/AbstractSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    .line 25
    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, p0, p1}, Lkotlin/collections/AbstractSet$Companion;->setEquals$kotlin_stdlib(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    .line 31
    invoke-virtual {v0, p0}, Lkotlin/collections/AbstractSet$Companion;->unorderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
