.class public abstract Landroidx/compose/ui/graphics/ShaderBrush;
.super Landroidx/compose/ui/graphics/Brush;
.source "Brush.kt"


# instance fields
.field private createdSize:J

.field private internalShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 646
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Brush;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 649
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    return-void
.end method


# virtual methods
.method public final applyTo-Pq9zytI(JLandroidx/compose/ui/graphics/Paint;F)V
    .locals 4

    const-string v0, "p"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->internalShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    .line 655
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 656
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->internalShader:Landroid/graphics/Shader;

    .line 659
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->internalShader:Landroid/graphics/Shader;

    iput-wide p1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    .line 665
    :cond_2
    :goto_0
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->getColor-0d7_KjU()J

    move-result-wide p1

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 666
    :cond_3
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p3, v0}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    .line 667
    :cond_4
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, p4

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p3, p4}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public abstract createShader-uvyYCjk(J)Landroid/graphics/Shader;
.end method
