.class public final Lkotlin/DeepRecursiveFunction;
.super Ljava/lang/Object;
.source "DeepRecursive.kt"


# instance fields
.field private final block:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/DeepRecursiveFunction;->block:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final getBlock$kotlin_stdlib()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
