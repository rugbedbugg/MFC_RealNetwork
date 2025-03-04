.class public Lorg/bouncycastle/cms/CMSEncryptedGenerator;
.super Ljava/lang/Object;


# instance fields
.field protected unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method


# virtual methods
.method public setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method
