.class Lcom/google/common/collect/CollectSpliterators$1;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromSpliterator:Ljava/util/Spliterator;

.field final synthetic val$function:Ljava/util/function/Function;


# direct methods
.method public static synthetic $r8$lambda$29eJ-8eqOuezCUOm3lykrvU05TE(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/CollectSpliterators$1;->lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqZGdw-9p-TghD1nN4nxb9Orf6s(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/CollectSpliterators$1;->lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 128
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline5;->m(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline6;->m(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 123
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline5;->m(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline6;->m(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 145
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Spliterator;)I

    move-result v0

    and-int/lit16 v0, v0, -0x106

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 140
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline3;->m(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 128
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 122
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline4;->m(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 134
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 135
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
