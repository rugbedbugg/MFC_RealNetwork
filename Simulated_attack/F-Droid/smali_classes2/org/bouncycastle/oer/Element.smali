.class public Lorg/bouncycastle/oer/Element;
.super Ljava/lang/Object;


# instance fields
.field private final aSwitch:Lorg/bouncycastle/oer/Switch;

.field private final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field private final block:I

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final defaultValuesInChildren:Z

.field private final elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

.field private final enumValue:Ljava/math/BigInteger;

.field private final explicit:Z

.field private final extensionsInDefinition:Z

.field private final label:Ljava/lang/String;

.field private final lowerBound:Ljava/math/BigInteger;

.field private final mayRecurse:Z

.field private optionalChildrenInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final optionals:I

.field private parent:Lorg/bouncycastle/oer/Element;

.field private final supplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final typeName:Ljava/lang/String;

.field private final upperBound:Ljava/math/BigInteger;

.field private validSwitchValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    iget-boolean v1, p1, Lorg/bouncycastle/oer/Element;->explicit:Z

    iput-boolean v1, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    iget-boolean v1, p1, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    iput-boolean v1, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-boolean v1, p1, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    iput-boolean v1, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    iget p2, p1, Lorg/bouncycastle/oer/Element;->block:I

    iput p2, p0, Lorg/bouncycastle/oer/Element;->block:I

    iget p2, p1, Lorg/bouncycastle/oer/Element;->optionals:I

    iput p2, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    iget-boolean p1, p1, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    iput-boolean p1, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/oer/Element;

    iput-object p0, p2, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Switch;Ljava/util/List;Lorg/bouncycastle/oer/ElementSupplier;ZLjava/lang/String;Ljava/util/Map;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Z",
            "Ljava/math/BigInteger;",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            "Lorg/bouncycastle/oer/Switch;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;IIZ)V"
        }
    .end annotation

    .line 0
    move-object v0, p0

    move-object/from16 v1, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v2, p2

    iput-object v2, v0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    move v3, p3

    iput-boolean v3, v0, Lorg/bouncycastle/oer/Element;->explicit:Z

    move-object v3, p4

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    move-object v3, p5

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    move-object v3, p6

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    move v3, p7

    iput-boolean v3, v0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    move-object v3, p8

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    move-object v3, p9

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    move-object v3, p10

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz p11, :cond_0

    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    move-object/from16 v3, p12

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    move/from16 v3, p13

    iput-boolean v3, v0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    move-object/from16 v3, p14

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    move/from16 v3, p16

    iput v3, v0, Lorg/bouncycastle/oer/Element;->block:I

    move/from16 v3, p17

    iput v3, v0, Lorg/bouncycastle/oer/Element;->optionals:I

    move/from16 v3, p18

    iput-boolean v3, v0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/Element;

    iput-object v0, v2, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getParent()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Lorg/bouncycastle/oer/Element;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public appendLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, " (E)"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public canBeNegative()Z
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_c

    :cond_1
    check-cast p1, Lorg/bouncycastle/oer/Element;

    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    iget-boolean v3, p1, Lorg/bouncycastle/oer/Element;->explicit:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    iget-boolean v3, p1, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    iget-boolean v3, p1, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    iget-boolean v3, p1, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    iget v3, p1, Lorg/bouncycastle/oer/Element;->optionals:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lorg/bouncycastle/oer/Element;->block:I

    iget v3, p1, Lorg/bouncycastle/oer/Element;->block:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v2, :cond_a

    :goto_0
    return v1

    :cond_a
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_d
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_e

    :goto_2
    return v1

    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_3

    :cond_f
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_10

    :goto_3
    return v1

    :cond_10
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_4

    :cond_11
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v2, :cond_12

    :goto_4
    return v1

    :cond_12
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_13
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_14

    :goto_5
    return v1

    :cond_14
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v2, :cond_15

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_6

    :cond_15
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v2, :cond_16

    :goto_6
    return v1

    :cond_16
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_7

    :cond_17
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v2, :cond_18

    :goto_7
    return v1

    :cond_18
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_8

    :cond_19
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v2, :cond_1a

    :goto_8
    return v1

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    :cond_1b
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v2, :cond_1c

    :goto_9
    return v1

    :cond_1c
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_a

    :cond_1d
    iget-object v2, p1, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_a
    return v1

    :cond_1e
    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object p1, p1, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    if-eqz v2, :cond_20

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_b

    :cond_1f
    move v0, v1

    goto :goto_b

    :cond_20
    if-eqz p1, :cond_1f

    :goto_b
    return v0

    :cond_21
    :goto_c
    return v1
.end method

.method public getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method

.method public getBlock()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/Element;->block:I

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getDerivedTypeName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0
.end method

.method public getEnumValue()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFirstChid()Lorg/bouncycastle/oer/Element;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/Element;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLowerBound()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOptionalChildrenInOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    return-object v0
.end method

.method public getOptionals()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    return v0
.end method

.method public getParent()Lorg/bouncycastle/oer/Element;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperBound()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidSwitchValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    return-object v0
.end method

.method public getaSwitch()Lorg/bouncycastle/oer/Switch;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    return-object v0
.end method

.method public hasDefaultChildren()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    return v0
.end method

.method public hasPopulatedExtension()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/oer/Element;->block:I

    add-int/2addr v0, v1

    return v0
.end method

.method public intBytesForRange()I
    .locals 7

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v3, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v2

    :goto_1
    sget-object v4, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v5

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v5

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_2

    neg-int v0, v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isExplicit()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    return v0
.end method

.method public isExtensionsInDefinition()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    return v0
.end method

.method public isFixedLength()Z
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerRangeZero()Z
    .locals 2

    .line 0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMayRecurse()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    return v0
.end method

.method public isUnbounded()Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsignedWithRange()Z
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public optionalOrDefaultChildrenInOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getOptionalChildrenInOrder()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getOptionalChildrenInOrder()Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rangeExpression()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "MIN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "MAX"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveSupplier()Lorg/bouncycastle/oer/ElementSupplier;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/Element;->resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/ElementSupplier;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/Element;->resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
