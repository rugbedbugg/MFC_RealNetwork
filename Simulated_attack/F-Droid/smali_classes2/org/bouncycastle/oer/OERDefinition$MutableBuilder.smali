.class public Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
.super Lorg/bouncycastle/oer/OERDefinition$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBuilder"
.end annotation


# instance fields
.field private frozen:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-void
.end method


# virtual methods
.method public varargs addItemsAndFreeze([Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 8

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    aget-object v2, p1, v1

    instance-of v4, v2, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v4, :cond_0

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, [Ljava/lang/Object;

    array-length v4, v2

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "build cannot be modified and must be copied only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    return-object p0
.end method
