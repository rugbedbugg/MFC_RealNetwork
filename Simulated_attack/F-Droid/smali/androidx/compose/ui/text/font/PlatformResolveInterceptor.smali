.class public interface abstract Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->Companion:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    return-void
.end method


# virtual methods
.method public abstract interceptFontFamily(Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/font/FontFamily;
.end method

.method public abstract interceptFontStyle-T2F_aPo(I)I
.end method

.method public abstract interceptFontSynthesis-Mscr08Y(I)I
.end method

.method public abstract interceptFontWeight(Landroidx/compose/ui/text/font/FontWeight;)Landroidx/compose/ui/text/font/FontWeight;
.end method
