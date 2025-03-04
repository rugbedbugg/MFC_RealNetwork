.class public final Landroidx/compose/ui/text/android/style/TextDecorationSpan;
.super Landroid/text/style/CharacterStyle;
.source "TextDecorationSpan.kt"


# instance fields
.field private final isStrikethroughText:Z

.field private final isUnderlineText:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;->isUnderlineText:Z

    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;->isStrikethroughText:Z

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;->isUnderlineText:Z

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;->isStrikethroughText:Z

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void
.end method
