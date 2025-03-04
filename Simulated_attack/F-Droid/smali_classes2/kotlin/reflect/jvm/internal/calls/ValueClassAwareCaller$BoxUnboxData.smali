.class final Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;
.super Ljava/lang/Object;
.source "ValueClassAwareCaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoxUnboxData"
.end annotation


# instance fields
.field private final argumentRange:Lkotlin/ranges/IntRange;

.field private final box:Ljava/lang/reflect/Method;

.field private final unboxParameters:[Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unboxParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->argumentRange:Lkotlin/ranges/IntRange;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->unboxParameters:[Ljava/util/List;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->box:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final getArgumentRange()Lkotlin/ranges/IntRange;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->argumentRange:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final getBox()Ljava/lang/reflect/Method;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->box:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getUnboxParameters()[Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->unboxParameters:[Ljava/util/List;

    return-object v0
.end method
