.class public Lorg/bouncycastle/oer/OERDefinition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected aSwitch:Lorg/bouncycastle/oer/Switch;

.field protected final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field protected block:I

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/oer/OERDefinition$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

.field protected defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

.field protected enumValue:Ljava/math/BigInteger;

.field protected explicit:Z

.field protected inScope:Ljava/lang/Boolean;

.field protected label:Ljava/lang/String;

.field protected lowerBound:Ljava/math/BigInteger;

.field protected mayRecurse:Z

.field protected placeholderValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field protected supplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;"
        }
    .end annotation
.end field

.field protected typeName:Ljava/lang/String;

.field protected upperBound:Ljava/math/BigInteger;

.field protected validSwitchValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder$1;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$ItemProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method private copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition$ItemProvider;->existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    iget p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iput p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    return-object v0
.end method


# virtual methods
.method protected addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V
    .locals 3

    .line 0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    iget p2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object p1, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v2, :cond_1

    iget v2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    iget v2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput v2, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object v2, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V
    .locals 2

    .line 0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object v1, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected block(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    return-object v0
.end method

.method public build()Lorg/bouncycastle/oer/Element;
    .locals 22

    .line 0
    move-object/from16 v0, p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, v4

    move v5, v2

    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    if-nez v7, :cond_0

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    add-int/lit8 v5, v5, 0x1

    :cond_0
    iget-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate enum value at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v4

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-nez v8, :cond_3

    iget v6, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    if-lez v6, :cond_3

    move v8, v5

    :cond_3
    iget-boolean v6, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-nez v6, :cond_4

    add-int/lit8 v18, v18, 0x1

    :cond_4
    if-nez v19, :cond_5

    iget-object v6, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v6, :cond_5

    move/from16 v19, v5

    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v20, Lorg/bouncycastle/oer/Element;

    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iget-object v10, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v10, :cond_7

    iget-boolean v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-eqz v1, :cond_7

    move v4, v5

    :cond_7
    iget-object v5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iget-object v7, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iget-object v9, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iget-object v11, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v13, 0x0

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    move-object v13, v1

    :goto_2
    iget-object v14, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-boolean v15, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iget-object v12, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x0

    goto :goto_3

    :cond_9
    iget-object v12, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    move-object/from16 v16, v12

    :goto_3
    iget v12, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    move/from16 v17, v12

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v21

    invoke-direct/range {v1 .. v19}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Switch;Ljava/util/List;Lorg/bouncycastle/oer/ElementSupplier;ZLjava/lang/String;Ljava/util/Map;IIZ)V

    return-object v20
.end method

.method public copy()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public decodeSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    return-object v0
.end method

.method public defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public elementSupplier(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0
.end method

.method public enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    return-object v0
.end method

.method public fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    return-object v0
.end method

.method public varargs items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 8

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_4

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    goto :goto_2

    :cond_0
    instance-of v4, v3, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v4, :cond_1

    iget v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, v0, v4, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v6

    if-ge v4, v7, :cond_3

    iget-object v7, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public varargs limitScopeTo([Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    iget-object v3, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    return-object v0
.end method

.method public range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object p5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeZeroTo(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder$2;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$Builder;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public varargs validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to wrap item in builder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
