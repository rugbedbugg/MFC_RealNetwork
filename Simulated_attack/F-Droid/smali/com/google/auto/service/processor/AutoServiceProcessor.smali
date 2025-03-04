.class public Lcom/google/auto/service/processor/AutoServiceProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AutoServiceProcessor.java"


# instance fields
.field private final exceptionStacks:Ljava/util/List;

.field private final providers:Lcom/google/common/collect/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/service/processor/AutoServiceProcessor;->exceptionStacks:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/service/processor/AutoServiceProcessor;->providers:Lcom/google/common/collect/Multimap;

    return-void
.end method
