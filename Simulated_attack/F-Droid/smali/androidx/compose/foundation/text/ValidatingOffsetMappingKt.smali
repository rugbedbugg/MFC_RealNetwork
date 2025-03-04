.class public abstract Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;
.super Ljava/lang/Object;
.source "ValidatingOffsetMapping.kt"


# static fields
.field private static final ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;

    .line 25
    sget-object v1, Landroidx/compose/ui/text/input/OffsetMapping;->Companion:Landroidx/compose/ui/text/input/OffsetMapping$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->getIdentity()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/foundation/text/ValidatingOffsetMapping;-><init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V

    sput-object v0, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method

.method public static final filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object p0

    .line 32
    new-instance v0, Landroidx/compose/ui/text/input/TransformedText;

    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 34
    new-instance v2, Landroidx/compose/foundation/text/ValidatingOffsetMapping;

    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p0

    .line 34
    invoke-direct {v2, v3, p1, p0}, Landroidx/compose/foundation/text/ValidatingOffsetMapping;-><init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V

    .line 32
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-object v0
.end method

.method public static final getValidatingEmptyOffsetMappingIdentity()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object v0
.end method
