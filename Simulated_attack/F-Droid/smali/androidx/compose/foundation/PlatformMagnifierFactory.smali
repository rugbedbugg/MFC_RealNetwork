.class public interface abstract Landroidx/compose/foundation/PlatformMagnifierFactory;
.super Ljava/lang/Object;
.source "PlatformMagnifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;->$$INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactory;->Companion:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;

    return-void
.end method


# virtual methods
.method public abstract create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;
.end method

.method public abstract getCanUpdateZoom()Z
.end method
