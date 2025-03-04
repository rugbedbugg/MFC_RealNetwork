.class public interface abstract Landroidx/compose/ui/platform/WindowRecomposerFactory;
.super Ljava/lang/Object;
.source "WindowRecomposer.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerFactory;->Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    return-void
.end method


# virtual methods
.method public abstract createRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
.end method
