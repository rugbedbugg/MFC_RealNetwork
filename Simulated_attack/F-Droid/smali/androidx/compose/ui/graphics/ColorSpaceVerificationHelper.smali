.class final Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;
.super Ljava/lang/Object;
.source "AndroidColorSpace.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;


# direct methods
.method public static synthetic $r8$lambda$QFu0dile_y9I3drz06WdO7yW50A(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->androidColorSpace$lambda$1(Lkotlin/jvm/functions/Function1;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$QjPy_9duDqaY6Xqc17Bckdmcey8(Landroid/graphics/ColorSpace;D)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->composeColorSpace$lambda$2(Landroid/graphics/ColorSpace;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$eGlfWATOmIjmWkkLSguMlMWw7_8(Lkotlin/jvm/functions/Function1;D)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->androidColorSpace$lambda$0(Lkotlin/jvm/functions/Function1;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$pQY73vf2dPh7NEalGYV8cBq8u3g(Landroid/graphics/ColorSpace;D)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->composeColorSpace$lambda$3(Landroid/graphics/ColorSpace;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final androidColorSpace(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline5;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.SRGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 56
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAces()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline17;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.ACES)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 57
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAcescg()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline20;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.ACESCG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAdobeRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline21;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.ADOBE_RGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 59
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt2020()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline22;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.BT2020)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 60
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt709()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline6;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.BT709)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 61
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline8;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.CIE_LAB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 62
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline9;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.CIE_XYZ)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 63
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDciP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline10;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.DCI_P3)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 64
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDisplayP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline11;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.DISPLAY_P3)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 65
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline12;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.Col\u2026pace.Named.EXTENDED_SRGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 66
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 67
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline13;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.Col\u2026med.LINEAR_EXTENDED_SRGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 68
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline14;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.LINEAR_SRGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 69
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline15;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.NTSC_1953)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 70
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getProPhotoRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline16;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.Col\u2026pace.Named.PRO_PHOTO_RGB)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 71
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSmpteC()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline18;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const-string v1, "get(android.graphics.ColorSpace.Named.SMPTE_C)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 73
    :cond_f
    instance-of v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    if-eqz v1, :cond_12

    .line 74
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v5

    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransferParameters()Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 77
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline3;->m()V

    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v6

    .line 79
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v8

    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v10

    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v12

    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v14

    .line 83
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v16

    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v18

    .line 77
    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline0;->m(DDDDDDD)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    goto :goto_0

    :cond_10
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_11

    .line 90
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline4;->m()V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getPrimaries$ui_graphics_release()[F

    move-result-object v0

    .line 90
    invoke-static {v2, v0, v5, v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_11
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline4;->m()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v3

    .line 99
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getPrimaries$ui_graphics_release()[F

    move-result-object v4

    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetf()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    new-instance v6, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda45;

    invoke-direct {v6, v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda45;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 102
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotf()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    new-instance v7, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda46;

    invoke-direct {v7, v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda46;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v8

    .line 104
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v9

    .line 97
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline19;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_2

    .line 108
    :cond_12
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline5;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_2
    const-string v1, "{\n                if (th\u2026          }\n            }"

    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method private static final androidColorSpace$lambda$0(Lkotlin/jvm/functions/Function1;D)D
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static final androidColorSpace$lambda$1(Lkotlin/jvm/functions/Function1;D)D
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static final composeColorSpace(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline23;->m(Landroid/graphics/ColorSpace;)I

    move-result v1

    .line 119
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline5;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 120
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 121
    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline17;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 122
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAces()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 123
    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline20;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 124
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAcescg()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 125
    :cond_2
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline21;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 126
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAdobeRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 127
    :cond_3
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline22;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 128
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt2020()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 129
    :cond_4
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline6;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 130
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt709()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 131
    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline8;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 132
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    goto/16 :goto_3

    .line 133
    :cond_6
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline9;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 134
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    goto/16 :goto_3

    .line 135
    :cond_7
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline10;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 136
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDciP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 137
    :cond_8
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline11;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 138
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDisplayP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 139
    :cond_9
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline12;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 140
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 141
    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline13;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 142
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 143
    :cond_b
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline14;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_c

    .line 144
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 145
    :cond_c
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline15;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 146
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 147
    :cond_d
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline16;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_e

    .line 148
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getProPhotoRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 149
    :cond_e
    invoke-static {}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline18;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline24;->m(Landroid/graphics/ColorSpace$Named;)I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 150
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSmpteC()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    goto/16 :goto_3

    .line 152
    :cond_f
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline25;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 153
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline27;->m(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    .line 154
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_10

    .line 155
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {v2, v3, v4, v6}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FFF)V

    :goto_0
    move-object v9, v2

    goto :goto_1

    .line 157
    :cond_10
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline28;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_11

    .line 161
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 162
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline29;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v11

    .line 163
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline30;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v13

    .line 164
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline31;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v15

    .line 165
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline32;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v17

    .line 166
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline33;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v19

    .line 167
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline34;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v21

    .line 168
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline35;->m(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)D

    move-result-wide v23

    move-object v10, v2

    .line 161
    invoke-direct/range {v10 .. v24}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDD)V

    move-object v15, v2

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    move-object v15, v1

    .line 173
    :goto_2
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 174
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline36;->m(Landroid/graphics/ColorSpace$Rgb;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "this.name"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline37;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v8

    const-string v2, "this.primaries"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline38;->m(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v10

    .line 178
    new-instance v11, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda47;

    invoke-direct {v11, v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda47;-><init>(Landroid/graphics/ColorSpace;)V

    .line 179
    new-instance v12, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda48;

    invoke-direct {v12, v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda48;-><init>(Landroid/graphics/ColorSpace;)V

    .line 180
    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline39;->m(Landroid/graphics/ColorSpace;I)F

    move-result v13

    .line 181
    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline40;->m(Landroid/graphics/ColorSpace;I)F

    move-result v14

    .line 183
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline41;->m(Landroid/graphics/ColorSpace$Rgb;)I

    move-result v16

    move-object v6, v1

    .line 173
    invoke-direct/range {v6 .. v16}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    move-object v0, v1

    goto :goto_3

    .line 186
    :cond_12
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private static final composeColorSpace$lambda$2(Landroid/graphics/ColorSpace;D)D
    .locals 1

    const-string v0, "$this_composeColorSpace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline44;->m(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline43;->m(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final composeColorSpace$lambda$3(Landroid/graphics/ColorSpace;D)D
    .locals 1

    const-string v0, "$this_composeColorSpace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline26;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline42;->m(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticApiModelOutline43;->m(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method
