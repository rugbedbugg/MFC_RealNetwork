.class public final Lkotlin/reflect/KTypeProjection$Companion;
.super Ljava/lang/Object;
.source "KTypeProjection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/KTypeProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lkotlin/reflect/KTypeProjection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final contravariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lkotlin/reflect/KTypeProjection;

    sget-object v1, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v0
.end method

.method public final covariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lkotlin/reflect/KTypeProjection;

    sget-object v1, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v0
.end method

.method public final getSTAR()Lkotlin/reflect/KTypeProjection;
    .locals 1

    .line 62
    sget-object v0, Lkotlin/reflect/KTypeProjection;->star:Lkotlin/reflect/KTypeProjection;

    return-object v0
.end method

.method public final invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lkotlin/reflect/KTypeProjection;

    sget-object v1, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v0
.end method
