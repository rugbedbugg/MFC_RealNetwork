.class public final Landroidx/compose/ui/graphics/ColorFilter$Companion;
.super Ljava/lang/Object;
.source "ColorFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/ColorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/ColorFilter$Companion;-><init>()V

    return-void
.end method

.method public static synthetic tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 44
    sget-object p3, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 45
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->actualTintColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p1

    return-object p1
.end method
