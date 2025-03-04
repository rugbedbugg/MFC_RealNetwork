.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# instance fields
.field private final alignment:Landroid/text/Layout$Alignment;

.field private final breakStrategy:I

.field private final ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private final ellipsizedWidth:I

.field private final end:I

.field private final hyphenationFrequency:I

.field private final includePadding:Z

.field private final justificationMode:I

.field private final leftIndents:[I

.field private final lineBreakStyle:I

.field private final lineBreakWordStyle:I

.field private final lineSpacingExtra:F

.field private final lineSpacingMultiplier:F

.field private final maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private final rightIndents:[I

.field private final start:I

.field private final text:Ljava/lang/CharSequence;

.field private final textDir:Landroid/text/TextDirectionHeuristic;

.field private final useFallbackLineSpacing:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    const-string v11, "text"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "paint"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "textDir"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "alignment"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    iput v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    iput v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    iput v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    iput-object v6, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    iput-object v7, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    move-object/from16 v4, p9

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iput v9, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    iput v10, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    move/from16 v4, p12

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    move/from16 v4, p13

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    move/from16 v4, p14

    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    move/from16 v4, p15

    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    move/from16 v4, p16

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    move/from16 v4, p17

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    move/from16 v4, p18

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    move/from16 v4, p19

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    move-object/from16 v4, p20

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    move-object/from16 v4, p21

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    const-string v4, "Failed requirement."

    if-ltz v2, :cond_5

    if-gt v2, v3, :cond_5

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz v3, :cond_4

    if-gt v3, v1, :cond_4

    if-ltz v8, :cond_3

    if-ltz v5, :cond_2

    if-ltz v9, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final getBreakStrategy()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    return v0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public final getEllipsizedWidth()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    return v0
.end method

.method public final getEnd()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    return v0
.end method

.method public final getHyphenationFrequency()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    return v0
.end method

.method public final getIncludePadding()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    return v0
.end method

.method public final getJustificationMode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    return v0
.end method

.method public final getLeftIndents()[I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    return-object v0
.end method

.method public final getLineBreakStyle()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    return v0
.end method

.method public final getLineBreakWordStyle()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    return v0
.end method

.method public final getLineSpacingExtra()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    return v0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getRightIndents()[I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    return-object v0
.end method

.method public final getStart()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDir()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public final getUseFallbackLineSpacing()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    return v0
.end method
