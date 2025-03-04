.class public interface abstract Landroidx/compose/ui/text/style/TextForegroundStyle;
.super Ljava/lang/Object;
.source "TextForegroundStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;,
        Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->$$INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    sput-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAlpha()F
.end method

.method public abstract getBrush()Landroidx/compose/ui/graphics/Brush;
.end method

.method public abstract getColor-0d7_KjU()J
.end method

.method public abstract merge(Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;
.end method

.method public abstract takeOrElse(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/TextForegroundStyle;
.end method
