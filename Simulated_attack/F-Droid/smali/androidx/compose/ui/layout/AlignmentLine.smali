.class public abstract Landroidx/compose/ui/layout/AlignmentLine;
.super Ljava/lang/Object;
.source "AlignmentLine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/AlignmentLine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/layout/AlignmentLine$Companion;


# instance fields
.field private final merger:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/layout/AlignmentLine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/AlignmentLine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/layout/AlignmentLine;->Companion:Landroidx/compose/ui/layout/AlignmentLine$Companion;

    return-void
.end method

.method private constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/AlignmentLine;->merger:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/AlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getMerger$ui_release()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/AlignmentLine;->merger:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
