.class public abstract Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;
.super Ljava/lang/Object;
.source "MinLinesConstrainer.kt"


# static fields
.field private static final EmptyTextReplacement:Ljava/lang/String;

.field private static final TwoLineTextReplacement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "H"

    const/16 v1, 0xa

    .line 139
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->TwoLineTextReplacement:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEmptyTextReplacement$p()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->EmptyTextReplacement:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTwoLineTextReplacement$p()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->TwoLineTextReplacement:Ljava/lang/String;

    return-object v0
.end method
