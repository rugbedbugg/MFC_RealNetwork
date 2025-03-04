.class public final Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;
.super Ljava/lang/Object;
.source "ResourceUtils.kt"


# instance fields
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private final weight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V
    .locals 1

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p2, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 205
    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p2

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v3, p1, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object p1, p1, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public final getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontFamilyWithWeight(fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
