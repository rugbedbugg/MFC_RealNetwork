.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final psidSspRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange$Builder;->psidSspRanges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public varargs add([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange$Builder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange$Builder;->psidSspRanges:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange$Builder;->psidSspRanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;-><init>(Ljava/util/List;)V

    return-object v0
.end method
