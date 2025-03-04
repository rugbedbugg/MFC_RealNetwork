.class public final Lcom/google/accompanist/themeadapter/material/ThemeParameters;
.super Ljava/lang/Object;
.source "MdcTheme.kt"


# instance fields
.field private final colors:Landroidx/compose/material/Colors;

.field private final shapes:Landroidx/compose/material/Shapes;

.field private final typography:Landroidx/compose/material/Typography;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    iput-object p2, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    iput-object p3, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    return-void
.end method


# virtual methods
.method public final component1()Landroidx/compose/material/Colors;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    return-object v0
.end method

.method public final component2()Landroidx/compose/material/Typography;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    return-object v0
.end method

.method public final component3()Landroidx/compose/material/Shapes;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/accompanist/themeadapter/material/ThemeParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/accompanist/themeadapter/material/ThemeParameters;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    iget-object v3, p1, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    iget-object v3, p1, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    iget-object p1, p1, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/material/Typography;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeParameters(colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->colors:Landroidx/compose/material/Colors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typography="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->typography:Landroidx/compose/material/Typography;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shapes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;->shapes:Landroidx/compose/material/Shapes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
