.class public final synthetic Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1;->$r8$lambda$29eJ-8eqOuezCUOm3lykrvU05TE(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
