.class final Lkotlin/reflect/jvm/internal/ComputableClassValue;
.super Ljava/lang/ClassValue;
.source "CacheByClass.kt"


# instance fields
.field public final compute:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ComputableClassValue;->compute:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/ComputableClassValue;->computeValue(Ljava/lang/Class;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    return-object p1
.end method

.method protected computeValue(Ljava/lang/Class;)Ljava/lang/ref/SoftReference;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/ComputableClassValue;->compute:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
