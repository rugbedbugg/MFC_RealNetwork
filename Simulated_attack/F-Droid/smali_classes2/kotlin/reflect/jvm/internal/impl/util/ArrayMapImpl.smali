.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;
.super Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;
.source "ArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;


# instance fields
.field private data:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->Companion:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    return-void
.end method

.method public static final synthetic access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    return-object p0
.end method

.method private final ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 90
    array-length v1, v0

    if-le v1, p1, :cond_0

    return-void

    .line 91
    :cond_0
    array-length v0, v0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_1

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 95
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 108
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 114
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;-><init>(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->ensureCapacity(I)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 100
    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 103
    aput-object p2, v0, p1

    return-void
.end method
